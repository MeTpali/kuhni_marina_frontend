// Intentionally keep enum values identical to backend strings
// so `json_serializable` maps them without custom converters.
enum MeasureRequestStatus { NEW, IN_PROGRESS, DONE, CANCELLED }
