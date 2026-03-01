│   app.dart
│   main.dart
│   
├───core
│   ├───constants
│   │       app_colors.dart
│   │       app_fonts.dart
│   │       app_icons.dart
│   │       app_images.dart
│   │       app_keys.dart
│   │       
│   ├───entities
│   │   ├───response_result
│   │   │       response_result.dart
│   │   │       response_result.freezed.dart
│   │   │       
│   │   └───result
│   │           result.dart
│   │           result.freezed.dart
│   │
│   ├───parsers
│   │       data_parser.dart
│   │       icon_color_mapper.dart
│   │
│   ├───utils
│   │   │   date_extension.dart
│   │   │   dio.dart
│   │   │   errors_texts.dart
│   │   │   num.dart
│   │   │   string.dart
│   │   │
│   │   └───extensions
│   │           figma_height.dart
│   │           int_extensions.dart
│   │           num_extension.dart
│   │           string_extensions.dart
│   │
│   └───widgets
│       ├───app_bars
│       │       base_app_bar.dart
│       │       catalog_app_bar.dart
│       │       header_app_bar.dart
│       │       profile_app_bar.dart
│       │       simple_app_bar.dart
│       │       transparent_app_bar.dart
│       │
│       ├───background
│       │       day_card_background.dart
│       │       lock_background.dart
│       │       page_background.dart
│       │       payment_background.dart
│       │       registration_background.dart
│       │       simple_background.dart
│       │       universe_answer_background.dart
│       │
│       ├───blocks
│       │       menu_block.dart
│       │
│       ├───buttons
│       │       app_icon_button.dart
│       │       app_text_button.dart
│       │       label_button.dart
│       │       main_button.dart
│       │
│       ├───cards
│       │       app_card.dart
│       │       card_base.dart
│       │       master_card.dart
│       │
│       ├───dialogs
│       │       app_bottom_sheet.dart
│       │       date_time_picker.dart
│       │       simple_bottom_sheet.dart
│       │
│       ├───extensions
│       │       tap_lock_mixin.dart
│       │
│       ├───formatters
│       │       day_input_formatter.dart
│       │       money_editing_formatter.dart
│       │       month_input_foematter.dart
│       │       num_input_formatter.dart
│       │       phone_input_formatter.dart
│       │       text_input_phormatter.dart
│       │       time_input_formatter.dart
│       │       year_input_formatter.dart
│       │
│       ├───images
│       │       app_image.dart
│       │
│       ├───overlay
│       │       overlay_item.dart
│       │       overlay_wrap.dart
│       │
│       ├───scroll
│       │       optional_scroll_physics.dart
│       │       sliver_grid_delegate_with_min_cross_axis_extent.dart
│       │
│       ├───skeleton
│       │       app_skeleton.dart
│       │
│       ├───text
│       │       app_text_field.dart
│       │       expandable_text.dart
│       │
│       ├───tiles
│       │       select_tile.dart
│       │
│       ├───types
│       │       bracing.dart
│       │       chat_member_type.dart
│       │       gender.dart
│       │
│       ├───utils
│       │   └───ui
│       │           app_shadows.dart
│       │
│       ├───views
│       └───visuals
│               flexible_wrap.dart
│               view_bottom.dart
│
├───data
│   ├───dto
│   │   ├───articles
│   │   │   ├───article
│   │   │   │       article_dto.dart
│   │   │   │       article_dto.freezed.dart
│   │   │   │       article_dto.g.dart
│   │   │   │
│   │   │   └───articles_list
│   │   │           articles_list_dto.dart
│   │   │           articles_list_dto.freezed.dart
│   │   │           articles_list_dto.g.dart
│   │   │
│   │   ├───auth
│   │   │   ├───send_code_response
│   │   │   │       send_code_response_dto.dart
│   │   │   │       send_code_response_dto.freezed.dart
│   │   │   │       send_code_response_dto.g.dart
│   │   │   │
│   │   │   └───verify_code_response
│   │   │           verify_code_response_dto.dart
│   │   │           verify_code_response_dto.freezed.dart
│   │   │           verify_code_response_dto.g.dart
│   │   │
│   │   ├───chat
│   │   │   ├───message
│   │   │   │       message_dto.dart
│   │   │   │       message_dto.freezed.dart
│   │   │   │       message_dto.g.dart
│   │   │   │
│   │   │   └───message_list
│   │   │           message_list_dto.dart
│   │   │           message_list_dto.freezed.dart
│   │   │           message_list_dto.g.dart
│   │   │
│   │   ├───masters
│   │   │   ├───master
│   │   │   │       master_dto.dart
│   │   │   │       master_dto.freezed.dart
│   │   │   │       master_dto.g.dart
│   │   │   │
│   │   │   └───masters_list
│   │   │           masters_list_dto.dart
│   │   │           masters_list_dto.freezed.dart
│   │   │           masters_list_dto.g.dart
│   │   │
│   │   ├───notifications
│   │   │   └───notification
│   │   │           notification_dto.dart
│   │   │           notification_dto.freezed.dart
│   │   │           notification_dto.g.dart
│   │   │
│   │   └───user
│   │       ├───avatar_info
│   │       │       avatar_info_dto.dart
│   │       │       avatar_info_dto.freezed.dart
│   │       │       avatar_info_dto.g.dart
│   │       │
│   │       └───user
│   │               user_dto.dart
│   │               user_dto.freezed.dart
│   │               user_dto.g.dart
│   │
│   ├───mappers
│   │   │   i_mapper.dart
│   │   │
│   │   ├───articles
│   │   │   │   articles_mapper_factory.dart
│   │   │   │   i_articles_mapper_factory.dart
│   │   │   │
│   │   │   └───mappers
│   │   │           articles_list_mapper.dart
│   │   │           article_mapper.dart
│   │   │
│   │   ├───auth
│   │   │   │   send_code_response_mapper.dart
│   │   │   │   verify_code_response_mapper.dart
│   │   │   │
│   │   │   └───factory
│   │   │           auth_mapper_factory.dart
│   │   │           i_auth_mapper_factory.dart
│   │   │
│   │   ├───chat
│   │   │   │   chats_mapper_factory.dart
│   │   │   │   i_chats_mapper_factory.dart
│   │   │   │
│   │   │   └───mappers
│   │   │           message_list_mapper.dart
│   │   │           message_mapper.dart
│   │   │
│   │   ├───masters
│   │   │   │   i_masters_mapper_factory.dart
│   │   │   │   masters_mapper_factory.dart
│   │   │   │
│   │   │   └───mappers
│   │   │           masters_list_mapper.dart
│   │   │           master_mapper.dart
│   │   │
│   │   ├───notifications
│   │   │   │   i_notifications_mapper_factory.dart
│   │   │   │   notifications_mapper_factory.dart
│   │   │   │
│   │   │   └───mappers
│   │   │           notification_mapper.dart
│   │   │
│   │   └───user
│   │       │   i_user_mapper_factory.dart
│   │       │   user_mapper_factory.dart
│   │       │
│   │       └───mappers
│   │               avatar_info_mapper.dart
│   │               user_mapper.dart
│   │               user_to_dto_mapper.dart
│   │
│   ├───repositories
│   │   ├───accounts
│   │   │       accounts_remote_repository.dart
│   │   │       accounts_test_repository.dart
│   │   │
│   │   ├───auth
│   │   │       auth_remote_repository.dart
│   │   │       auth_test_repository.dart
│   │   │
│   │   ├───chats
│   │   │       chats_remote_repository.dart
│   │   │       chats_test_repository.dart
│   │   │
│   │   ├───interceptors
│   │   │       invalid_token_interceptor.dart
│   │   │
│   │   ├───library
│   │   │       library_remote_repository.dart
│   │   │       library_test_repository.dart
│   │   │
│   │   ├───masters
│   │   │       masters_remote_repository.dart
│   │   │       masters_test_repository.dart
│   │   │
│   │   ├───notifications
│   │   │       notifications_remote_repository.dart
│   │   │       notifications_test_repository.dart
│   │   │
│   │   ├───practices
│   │   │       practices_remote_repository.dart
│   │   │       practices_test_repository.dart
│   │   │
│   │   ├───token
│   │   │       sessionid_repository.dart
│   │   │       token.dart
│   │   │       token_secure_storage.dart
│   │   │       token_test_repository.dart
│   │   │
│   │   ├───topics
│   │   │       topics_remote_repository.dart
│   │   │       topics_test_repository.dart
│   │   │
│   │   └───universe
│   │           universe_remote_repository.dart
│   │           universe_test_repository.dart
│   │
│   └───services
│       ├───accounts
│       │       accounts_remote_service.dart
│       │
│       ├───auth
│       │       auth_service.dart
│       │
│       ├───chats
│       │       chats_test_service.dart
│       │
│       ├───library
│       │       library_remote_service.dart
│       │       library_test_service.dart
│       │
│       ├───masters
│       │       masters_remote_service.dart
│       │       masters_test_service.dart
│       │
│       ├───practices
│       │       practices_remote_service.dart
│       │
│       ├───topics
│       │       topics_remote_service.dart
│       │
│       └───universe
│               universe_test_service.dart
│
├───di
│       di.dart
│       prod_di.dart
│       prod_repos.dart
│       stage_di.dart
│       stage_repos.dart
│
├───domain
│   ├───models
│   │   ├───articles
│   │   │   ├───article
│   │   │   │       article.dart
│   │   │   │       article.freezed.dart
│   │   │   │       article_extensions.dart
│   │   │   │
│   │   │   ├───comment
│   │   │   │       comment.dart
│   │   │   │       comment.freezed.dart
│   │   │   │
│   │   │   ├───knowledge
│   │   │   │       knowledge.dart
│   │   │   │       knowledge.freezed.dart
│   │   │   │
│   │   │   └───topic
│   │   │           topic.dart
│   │   │           topic.freezed.dart
│   │   │
│   │   ├───auth
│   │   │       send_code_response.dart
│   │   │       send_code_response.freezed.dart
│   │   │       verify_code_response.dart
│   │   │       verify_code_response.freezed.dart
│   │   │
│   │   ├───chat
│   │   │   ├───chat
│   │   │   │       chat.dart
│   │   │   │       chat.freezed.dart
│   │   │   │
│   │   │   ├───chat_meta
│   │   │   │       chat_meta.dart
│   │   │   │       chat_meta.freezed.dart
│   │   │   │
│   │   │   ├───dialog
│   │   │   │       dialog.dart
│   │   │   │       dialog.freezed.dart
│   │   │   │
│   │   │   └───message
│   │   │           message.dart
│   │   │           message.freezed.dart
│   │   │
│   │   ├───masters
│   │   │   ├───appointment
│   │   │   │       appointment.dart
│   │   │   │       appointment.freezed.dart
│   │   │   │
│   │   │   ├───day_time
│   │   │   │       day_time.dart
│   │   │   │       day_time.freezed.dart
│   │   │   │
│   │   │   ├───master
│   │   │   │       master.dart
│   │   │   │       master.freezed.dart
│   │   │   │
│   │   │   ├───master_comment
│   │   │   │       master_comment.dart
│   │   │   │       master_comment.freezed.dart
│   │   │   │
│   │   │   ├───master_profile
│   │   │   │       master_profile.dart
│   │   │   │       master_profile.freezed.dart
│   │   │   │
│   │   │   └───service
│   │   │           service.dart
│   │   │           service.freezed.dart
│   │   │
│   │   ├───notifications
│   │   │   └───notification
│   │   │           notification_model.dart
│   │   │           notification_model.freezed.dart
│   │   │
│   │   ├───universe
│   │   │   └───universe_answer
│   │   │           universe_answer.dart
│   │   │           universe_answer.freezed.dart
│   │   │
│   │   └───user
│   │           avatar_info.dart
│   │           avatar_info.freezed.dart
│   │           user_model.dart
│   │           user_model.freezed.dart
│   │
│   ├───repositories
│   │       i_accounts_repository.dart
│   │       i_auth_repository.dart
│   │       i_chats_repository.dart
│   │       i_library_repository.dart
│   │       i_masters_repository.dart
│   │       i_notifications_repository.dart
│   │       i_practices_repository.dart
│   │       i_token_repository.dart
│   │       i_topics_repository.dart
│   │       i_universe_repository.dart
│   │
│   ├───usecases
│   │   │   use_case.dart
│   │   │
│   │   ├───auth
│   │   │       send_auth_code_use_case.dart
│   │   │       verify_auth_code_use_case.dart
│   │   │
│   │   └───universe_question
│   │           universe_question_use_case.dart
│   │           universe_question_use_case.freezed.dart
│   │
│   └───value_objects
│           phone_number.dart
│
├───presentation
│   ├───articles
│   │   ├───pages
│   │   │       add_article_page.dart
│   │   │       articles_page.dart
│   │   │       articles_shell_page.dart
│   │   │       article_page.dart
│   │   │       article_status_page.dart
│   │   │       favourite_articles_page.dart
│   │   │       library_page.dart
│   │   │       simple_articles_page.dart
│   │   │
│   │   ├───providers
│   │   │   │   articles_di.dart
│   │   │   │
│   │   │   ├───add_article
│   │   │   │       add_article_notifier.dart
│   │   │   │       add_article_state.dart
│   │   │   │       add_article_state.freezed.dart
│   │   │   │
│   │   │   ├───arcticle
│   │   │   │       article_notifier.dart
│   │   │   │       article_state.dart
│   │   │   │       article_state.freezed.dart
│   │   │   │
│   │   │   ├───arcticles
│   │   │   │       arcticles_notifier.dart
│   │   │   │       arcticles_state.dart
│   │   │   │       arcticles_state.freezed.dart
│   │   │   │
│   │   │   ├───comments
│   │   │   │       comments_notifier.dart
│   │   │   │
│   │   │   ├───favourite_articles
│   │   │   │       favourite_articles_notifier.dart
│   │   │   │       favourite_articles_state.dart
│   │   │   │       favourite_articles_state.freezed.dart
│   │   │   │
│   │   │   ├───library
│   │   │   │       library_notifier.dart
│   │   │   │       library_state.dart
│   │   │   │       library_state.freezed.dart
│   │   │   │
│   │   │   ├───preview_arcticles
│   │   │   │       preview_arcticles_notifier.dart
│   │   │   │       preview_arcticles_state.dart
│   │   │   │       preview_arcticles_state.freezed.dart
│   │   │   │
│   │   │   └───same_articles
│   │   │           same_arcticles_notifier.dart
│   │   │           same_arcticles_state.dart
│   │   │           same_arcticles_state.freezed.dart
│   │   │
│   │   └───widgets
│   │       ├───backgrounds
│   │       │       article_background.dart
│   │       │
│   │       ├───blocks
│   │       │       add_article_cover_block.dart
│   │       │       add_article_text_block.dart
│   │       │       add_article_topics_block.dart
│   │       │       knowledge_block.dart
│   │       │
│   │       ├───buttons
│   │       │       media_button.dart
│   │       │
│   │       ├───cards
│   │       │       topic_card.dart
│   │       │
│   │       ├───dialogs
│   │       │       comments_bottom_sheet.dart
│   │       │       select_topic_dialog.dart
│   │       │
│   │       ├───placeholders
│   │       │       loading_articles_page.dart
│   │       │
│   │       └───tiles
│   │               comment_tile.dart
│   │
│   ├───chat
│   │   ├───pages
│   │   │       chats_page.dart
│   │   │       chat_page.dart
│   │   │       chat_shell_page.dart
│   │   │
│   │   ├───providers
│   │   │   │   chat_di.dart
│   │   │   │
│   │   │   ├───chats
│   │   │   │       chats_notifier.dart
│   │   │   │       chats_state.dart
│   │   │   │       chats_state.freezed.dart
│   │   │   │
│   │   │   ├───chat_meta
│   │   │   │       chat_meta_notifier.dart
│   │   │   │       chat_meta_state.dart
│   │   │   │       chat_meta_state.freezed.dart
│   │   │   │
│   │   │   └───messages
│   │   │           messages_notifier.dart
│   │   │           messages_state.dart
│   │   │           messages_state.freezed.dart
│   │   │
│   │   └───widgets
│   │       ├───app_bars
│   │       │       chat_app_bar.dart
│   │       │
│   │       ├───pages
│   │       │       empty_chats_page.dart
│   │       │       empty_chat_page.dart
│   │       │       empty_messages_page.dart
│   │       │       loading_chats_page.dart
│   │       │       loading_chat_page.dart
│   │       │       loading_messages_page.dart
│   │       │       unauthorized_chats_page.dart
│   │       │
│   │       ├───separators
│   │       │       date_separator.dart
│   │       │
│   │       ├───text_fields
│   │       │       chat_text_field.dart
│   │       │
│   │       ├───tiles
│   │       │       chat_tile.dart
│   │       │       message_tile.dart
│   │       │
│   │       └───utils
│   │               last_seen_format.dart
│   │               messages_builder.dart
│   │
│   ├───day_card
│   │   ├───pages
│   │   │       day_card_page.dart
│   │   │
│   │   ├───providers
│   │   │   │   day_card_di.dart
│   │   │   │
│   │   │   └───day_card
│   │   │           day_card_notifier.dart
│   │   │           day_card_state.dart
│   │   │           day_card_state.freezed.dart
│   │   │
│   │   └───widgets
│   │           day_card_widget.dart
│   │           decoding_card.dart
│   │
│   ├───home
│   │       app_loading_page.dart
│   │       home_page.dart
│   │
│   ├───main
│   │   ├───pages
│   │   │       main_page.dart
│   │   │       main_shell_page.dart
│   │   │       notifications_page.dart
│   │   │
│   │   ├───providers
│   │   │   │   main_di.dart
│   │   │   │
│   │   │   ├───appointments
│   │   │   │       appointments_notifier.dart
│   │   │   │       appointments_state.dart
│   │   │   │       appointments_state.freezed.dart
│   │   │   │
│   │   │   ├───notifications
│   │   │   │       notifications_notifier.dart
│   │   │   │       notifications_state.dart
│   │   │   │       notifications_state.freezed.dart
│   │   │   │
│   │   │   ├───practices
│   │   │   │       practices_notifier.dart
│   │   │   │       practices_state.dart
│   │   │   │       practices_state.freezed.dart
│   │   │   │
│   │   │   └───topics
│   │   │           topics_notifier.dart
│   │   │           topics_state.dart
│   │   │           topics_state.freezed.dart
│   │   │
│   │   └───widgets
│   │       ├───blocks
│   │       │       appointments_block.dart
│   │       │       discussion_block.dart
│   │       │       knowledge_base_block.dart
│   │       │       masters_block.dart
│   │       │       practices_block.dart
│   │       │       searching_block.dart
│   │       │       topics_block.dart
│   │       │
│   │       ├───buttons
│   │       │       knowledge_base_selector.dart
│   │       │
│   │       ├───cards
│   │       │       appointment_card.dart
│   │       │       notification_card.dart
│   │       │       promo_card.dart
│   │       │       registration_card.dart
│   │       │
│   │       └───placeholders
│   │               empty_notifications_page.dart
│   │
│   ├───masters
│   │   ├───coordinators
│   │   │       session_registration_coordinator.dart
│   │   │
│   │   ├───pages
│   │   │       book_check_page.dart
│   │   │       favourite_masters_page.dart
│   │   │       masters_page.dart
│   │   │       masters_shell_page.dart
│   │   │       master_page.dart
│   │   │       session_registration_page.dart
│   │   │       video_page.dart
│   │   │
│   │   ├───providers
│   │   │   │   masters_di.dart
│   │   │   │
│   │   │   ├───book_check
│   │   │   ├───favourite_masters
│   │   │   │       favourite_masters_notifier.dart
│   │   │   │       favourite_masters_state.dart
│   │   │   │       favourite_masters_state.freezed.dart
│   │   │   │
│   │   │   ├───master
│   │   │   │       master_notifier.dart
│   │   │   │       master_state.dart
│   │   │   │       master_state.freezed.dart
│   │   │   │
│   │   │   ├───masters
│   │   │   │       masters_notifier.dart
│   │   │   │       masters_state.dart
│   │   │   │       masters_state.freezed.dart
│   │   │   │
│   │   │   ├───master_articles
│   │   │   │       master_articles_notifier.dart
│   │   │   │       master_articles_state.dart
│   │   │   │       master_articles_state.freezed.dart
│   │   │   │
│   │   │   ├───master_comments
│   │   │   │       master_comments_notifier.dart
│   │   │   │       master_comments_state.dart
│   │   │   │       master_comments_state.freezed.dart
│   │   │   │
│   │   │   └───session_registration
│   │   │           session_registration_notifier.dart
│   │   │           session_registration_state.dart
│   │   │           session_registration_state.freezed.dart
│   │   │
│   │   └───widgets
│   │       ├───app_bars
│   │       │       master_app_bar.dart
│   │       │
│   │       ├───blocks
│   │       │       articles_block.dart
│   │       │       day_time_selection_block.dart
│   │       │       service_selection_block.dart
│   │       │
│   │       ├───buttons
│   │       │       master_book_button.dart
│   │       │       selection_button.dart
│   │       │       session_registration_button.dart
│   │       │
│   │       ├───cards
│   │       │       balance_check_card.dart
│   │       │       comments_card.dart
│   │       │       date_check_card.dart
│   │       │       master_check_card.dart
│   │       │       master_info_card.dart
│   │       │       price_check_card.dart
│   │       │
│   │       ├───dialogs
│   │       │       sort_bottom_sheet.dart
│   │       │
│   │       ├───pages
│   │       │       empty_masters_page.dart
│   │       │       empty_master_page.dart
│   │       │
│   │       ├───placeholders
│   │       │       loading_masters_list.dart
│   │       │
│   │       └───tiles
│   │               comment_tile.dart
│   │               info_item_tile.dart
│   │
│   ├───profile
│   │   ├───pages
│   │   │   ├───auth
│   │   │   │       auth_page.dart
│   │   │   │       code_input_sheet.dart
│   │   │   │       registration_page.dart
│   │   │   │
│   │   │   └───profile
│   │   │           add_balanced_page.dart
│   │   │           payment_method_page.dart
│   │   │           profile_master_settings_page.dart
│   │   │           profile_page.dart
│   │   │           profile_settings_page.dart
│   │   │           profile_update_info_page.dart
│   │   │           timetable_page.dart
│   │   │           timetable_settings_page.dart
│   │   │
│   │   ├───providers
│   │   │   │   profile_di.dart
│   │   │   │
│   │   │   ├───auth
│   │   │   │       auth_notifier.dart
│   │   │   │       auth_state.dart
│   │   │   │       auth_state.freezed.dart
│   │   │   │
│   │   │   ├───profile
│   │   │   │       profile_notifier.dart
│   │   │   │       profile_state.dart
│   │   │   │       profile_state.freezed.dart
│   │   │   │
│   │   │   └───timetable
│   │   │           timetable_notifier.dart
│   │   │           timetable_state.dart
│   │   │           timetable_state.freezed.dart
│   │   │
│   │   └───widgets
│   │       │   auth_checkbox.dart
│   │       │   avatar.dart
│   │       │   avatar_setting_block.dart
│   │       │   payment_cards_block.dart
│   │       │   personal_info_block.dart
│   │       │   profile_main_info.dart
│   │       │
│   │       ├───block
│   │       │       about_block.dart
│   │       │       nickname_block.dart
│   │       │
│   │       ├───buttons
│   │       │       google_calendar_button.dart
│   │       │       session_type_button.dart
│   │       │       timetable_settings_button.dart
│   │       │       video_visit_button.dart
│   │       │
│   │       ├───cards
│   │       │       activities_card.dart
│   │       │       notifications_card.dart
│   │       │       payment_balanced_card.dart
│   │       │       payment_method_card.dart
│   │       │       profile_stat_cards.dart
│   │       │       sessions_card.dart
│   │       │       stat_info_card.dart
│   │       │
│   │       ├───dialogs
│   │       │       about_bottom_sheet.dart
│   │       │       authorization_bottom_sheet.dart
│   │       │       nickname_bottom_sheet.dart
│   │       │       profile_avatar_action_sheet.dart
│   │       │       selection_sheet.dart
│   │       │       session_price_bottom_sheet.dart
│   │       │       status_bottom_sheet.dart
│   │       │       video_visit_card_bottom_sheet.dart
│   │       │
│   │       ├───text_fields
│   │       │       otp_input_field.dart
│   │       │       profile_settings_text_field.dart
│   │       │
│   │       └───tiles
│   │               master_info_tile.dart
│   │               session_price_tile.dart
│   │               session_tile.dart
│   │               video_visit_card_tile.dart
│   │
│   ├───shared
│   │   ├───lists
│   │   │       astro_list_item.dart
│   │   │       practices_list.dart
│   │   │       topics_list.dart
│   │   │
│   │   └───mock
│   │           mock_practice_button.dart
│   │           mock_topic_button.dart
│   │
│   └───universe
│       ├───pages
│       │       universe_answer_page.dart
│       │       universe_page.dart
│       │       universe_question_settings_page.dart
│       │       universe_shell_page.dart
│       │
│       └───widgets
│           ├───selectors
│           │       date_menu_selector.dart
│           │
│           ├───text_fields
│           │       universe_setting_text_field.dart
│           │
│           └───tiles
│                   astro_category_tile.dart
│
└───routing
    │   app_router.dart
    │   app_router.gr.dart
    │
    └───guards
            auth_guard.dart