abstract interface class TrackingClient {
  /// Register a event to track
  /// [eventName] is the name of the event to track
  /// [properties] is a map of parameters to send with the event
  void trackEvent(String eventName, Map<String, dynamic>? properties);

  /// Register a new user to track
  /// [userId] is the id of the user to track
  /// [userProperties] is a map of parameters to send with the user
  void identifyUser(String userId, dynamic userProperties);
}
