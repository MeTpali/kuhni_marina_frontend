# Архитектура проекта Venera

Документ описывает слои приложения, правила зависимостей и конвенции. Следование ему сохраняет единый уровень кода и упрощает онбординг.

---

## Оглавление

1. [Слои и зависимости](#1-слои-и-зависимости)
2. [Core](#2-core)
3. [Domain](#3-domain)
4. [Data](#4-data)
5. [Presentation](#5-presentation)
6. [DI и навигация](#6-di-и-навигация)
7. [Обработка ошибок](#7-обработка-ошибок)
8. [Правила и запреты](#8-правила-и-запреты)

---

## 1. Слои и зависимости

```
                    ┌─────────────────┐
                    │  presentation   │  ← UI, страницы, провайдеры (Riverpod)
                    └────────┬────────┘
                             │ зависит от
                             ▼
                    ┌─────────────────┐
                    │     domain      │  ← сущности, интерфейсы репозиториев, use cases
                    └────────┬────────┘
                             ▲
                             │ реализует / зависит от
                    ┌────────┴────────┐
                    │      data       │  ← DTO, мапперы, сервисы, реализации репозиториев
                    └────────┬────────┘
                             │
                    ┌────────┴────────┐
                    │      core       │  ← Result, утилиты, константы, общие виджеты
                    └─────────────────┘
```

- **Presentation** зависит только от **domain** и **core**. Не импортирует **data** напрямую (доступ к репозиториям только через DI).
- **Data** зависит от **domain** и **core**. Реализует интерфейсы репозиториев из domain.
- **Domain** не зависит от data, presentation, routing, di и Flutter (кроме минимально необходимых типов). Может импортировать только **core**.

---

## 2. Core

**Путь:** `lib/core/`

Общие компоненты без бизнес-логики.

| Подпапка      | Назначение                                                                       |
| ------------- | -------------------------------------------------------------------------------- |
| `constants/`  | Цвета, шрифты, иконки, ключи                                                     |
| `entities/`   | `Result<T>`, `ResponseResult<T>`, `ResponseError` — типы для результата операций |
| `extensions/` | Расширения для типов                                                             |
| `parsers/`    | Парсеры ответов (например, DataParser)                                           |
| `utils/`      | DioUtils, ErrorText, хелперы                                                     |
| `widgets/`    | Переиспользуемые виджеты (AppBar, Button, Card, Dialog)                          |

**Result** — результат операции на уровне domain/presentation: `Result.success(value)` или `Result.error(message)`.

**ResponseResult** — результат на уровне data (ответ API): `ResponseResult.success(data)` или `ResponseResult.error(ResponseError)`.

---

## 3. Domain

**Путь:** `lib/domain/`

Бизнес-логика и контракты. Не знает про JSON, HTTP, Flutter, GetIt.

### 3.1. entities / models

Чистые доменные сущности: без `fromJson`, без полей инфраструктуры (URL, сырые ключи API).  
Сейчас сущности лежат в `domain/models/` (например, `Master`, `Article`, `User`, `Message`). В репозиториях и use cases используются именно они.

### 3.2. repositories (интерфейсы)

**Путь:** `lib/domain/repositories/`

Интерфейсы репозиториев (порты). Примеры: `IMastersRepository`, `IAuthRepository`, `IAccountsRepository`, `IUniverseRepository` и т.д.

- Методы возвращают `Future<Result<T>>` или `Future<Result<void>>`.
- Все реализации живут в **data** и регистрируются в DI по интерфейсу.

### 3.3. use cases

**Путь:** `lib/domain/usecases/`

Сценарии использования: одна операция — один use case.  
Примеры: `SendAuthCodeUseCase`, `VerifyAuthCodeUseCase`, `UniverseQuestionUseCase`.

- Зависимости передаются через конструктор (репозитории, не GetIt).
- Use case вызывает репозиторий и при необходимости валидирует/нормализует вход (например, через value objects).

### 3.4. value_objects

**Путь:** `lib/domain/value_objects/`

Value objects для валидации и нормализации (например, `PhoneNumber`).

---

## 4. Data

**Путь:** `lib/data/`

Работа с API и маппинг в доменные сущности.

### 4.1. dto

**Путь:** `lib/data/dto/`

Контракт API: классы с `fromJson` / `toJson`, аннотации `@JsonKey`.  
Примеры: `MasterDto`, `UserDto`, `MessageDto`, `SendCodeResponseDto`, `VerifyCodeResponseDto`.

- DTO не пробрасываются в domain или presentation.
- Маппинг DTO → Entity только в **mappers**.

### 4.2. mappers

**Путь:** `lib/data/mappers/`

Преобразование DTO ↔ Entity.  
Реализуют интерфейс `IMapper<F, T>` (`map(F from) → T`).  
Связанные мапперы сгруппированы в **фабрики** (например, `IMastersMapperFactory`, `IArticlesMapperFactory`), чтобы репозиторий получал одну зависимость вместо нескольких мапперов.

### 4.3. services

**Путь:** `lib/data/services/`

API-клиенты: вызовы HTTP, возврат `Future<ResponseResult<T>>` (успех или `ResponseError`).  
Не содержат маппинга в domain-сущности — только DTO.

### 4.4. repositories (реализации)

**Путь:** `lib/data/repositories/`

Реализации интерфейсов из `domain/repositories/`.  
Репозиторий:

1. Вызывает **service**.
2. При успехе маппит DTO в Entity через **mapper factory** и возвращает `Result.success(entity)`.
3. При ошибке переводит `ResponseError` в понятное пользователю сообщение (через ErrorMapper или вручную) и возвращает `Result.error(message)`.

---

## 5. Presentation

**Путь:** `lib/presentation/`

UI и состояние экранов.

- **pages/** — экраны.
- **providers/** — провайдеры Riverpod; `*_di.dart` — модули с провайдерами и инъекцией (notifier'ы получают репозитории/use cases через DI).
- **widgets/** — виджеты, специфичные для фичи.

Правила:

- Подписка на данные: `ref.watch(provider)` в `build` для отрисовки.
- Действия (кнопки, колбэки): `ref.read(provider.notifier)` или `ref.read(useCase)`, без `ref.watch` в колбэках.
- Состояние списков: использовать `State.error(message)` и отображать ошибку в UI (SnackBar или блок с кнопкой «Повторить»).
- После `await` в notifier'ах проверять `mounted`, чтобы не обновлять состояние после dispose.

---

## 6. DI и навигация

### 6.1. DI

**Путь:** `lib/di/`

- `di.dart` — экземпляр GetIt и `configureDependencies(buildType)`.
- `prod_di.dart` / `stage_di.dart` — конфигурация для production и staging.
- `prod_repos.dart` / `stage_repos.dart` — регистрация репозиториев (и фабрик мапперов).

Регистрировать репозитории по **интерфейсу** из domain:

```dart
getIt.registerSingleton<IMastersRepository>(
  MastersRemoteRepository(service: ..., mapperFactory: ...),
);
```

Use cases регистрировать как factory и передавать им репозитории из GetIt.

### 6.2. Навигация

**Путь:** `lib/routing/`

Маршрутизация через **auto_route**. Guards (например, `AuthGuard`) — в `routing/guards/`.

---

## 7. Обработка ошибок

Единый поток:

1. **Сервисы (data)** возвращают `ResponseResult<T>` или кидают исключения, которые перехватываются и превращаются в `ResponseResult.error(ResponseError)`.
2. **Репозитории (data)** маппят ответ сервиса:
   - успех: DTO → Entity через маппер → `Result.success(entity)`;
   - ошибка: `ResponseError` → пользовательское сообщение (централизованно через **ErrorMapper**, если он есть, или вручную) → `Result.error(message)`.
3. **Notifier'ы (presentation)** получают `Result` и выставляют либо состояние с данными, либо `State.error(message)`.
4. **UI** показывает ошибку через SnackBar или отдельный блок (и при необходимости кнопку «Повторить»).

Типовые сообщения брать из **ErrorText** (`lib/core/utils/errors_texts.dart`):

- `ErrorText.somethingWentWrongErrorText`
- `ErrorText.unauthorizedErrorText`
- `ErrorText.pageNotFoundErrorText`
- при появлении — сетевые/серверные сообщения из того же набора или через ErrorMapper.

Не «проглатывать» ошибки: либо показывать пользователю, либо логировать и переводить в понятное сообщение.

---

## 8. Правила и запреты

### Можно

- **data** импортирует **domain** (сущности, интерфейсы репозиториев) и **core**.
- **presentation** импортирует **domain** (сущности, use cases, интерфейсы) и **core**.
- Все слои импортируют **core**.
- Репозитории в DI регистрировать по интерфейсу из domain.

### Нельзя

- **Domain** импортировать **data**, **presentation**, **routing**, **di** или Flutter (кроме минимально необходимых типов).
- В domain использовать GetIt напрямую.
- **Presentation** импортировать **data** (доступ к данным только через интерфейсы domain и DI).
- Пробрасывать DTO в domain или presentation — только Entity.
- Делать маппинг DTO → Entity вне слоя data (мапперы в `data/mappers/`).

### Чек-лист перед мержем PR

- [ ] Проект собирается без ошибок.
- [ ] Нет новых предупреждений анализатора.
- [ ] Импорты упорядочены.
- [ ] Код соответствует конвенциям из этого документа.
- [ ] При изменении архитектуры обновлена документация.

