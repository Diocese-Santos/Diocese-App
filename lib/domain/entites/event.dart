final class Event {
  final String title;
  final String startTime;
  final String endTime;
  final String distance;
  final String? celebrant;

  const Event({
    required this.title,
    required this.startTime,
    required this.endTime,
    required this.distance,
    this.celebrant,
  });
}
