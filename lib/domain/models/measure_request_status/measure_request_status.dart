/// Статус заявки на замер (доменный enum).
enum MeasureRequestStatus {
  newStatus,
  inProgress,
  done,
  cancelled;

  String get name => switch (this) {
        MeasureRequestStatus.newStatus => 'NEW',
        MeasureRequestStatus.inProgress => 'IN_PROGRESS',
        MeasureRequestStatus.done => 'DONE',
        MeasureRequestStatus.cancelled => 'CANCELLED',
      };

  static MeasureRequestStatus fromName(String name) => MeasureRequestStatus.values.firstWhere(
      (e) => e.name == name,
      orElse: () => MeasureRequestStatus.newStatus,
    );
}
