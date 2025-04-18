import 'package:diocese_santos/infra/tracking/client/tracking_client.dart';

import 'package:segment_analytics/analytics.dart';
import 'package:segment_analytics/event.dart';

final class SegmentAdapter implements TrackingClient {
  final Analytics client;

  SegmentAdapter({required this.client});

  @override
  void identifyUser(String userId, dynamic userProperties) {
    if (userProperties is! UserTraits) {
      throw ArgumentError('Expected UserTraits for SegmentAdapter');
    }

    final traits = userProperties as UserTraits?;
    client.identify(
      userId: userId,
      userTraits: traits,
    );
  }

  @override
  void trackEvent(String eventName, Map<String, dynamic>? properties) {
    client.track(
      eventName,
      properties: properties,
    );
  }
}
