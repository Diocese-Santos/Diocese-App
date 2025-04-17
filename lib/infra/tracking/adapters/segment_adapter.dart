import 'package:diocese_santos/infra/tracking/client/tracking_client.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:segment_analytics/analytics.dart';
import 'package:segment_analytics/client.dart';
import 'package:segment_analytics/event.dart';
import 'package:segment_analytics/state.dart';

final class SegmentAdapter implements TrackingClient {
  late final Analytics _client;

  SegmentAdapter._(this._client);

  factory SegmentAdapter() {
    final writeKey = dotenv.env['SEGMENT_WRITE_KEY'] ?? '';
    final client = createClient(
      Configuration(
        writeKey,
        trackApplicationLifecycleEvents: true,
      ),
    );

    return SegmentAdapter._(client);
  }

  @override
  void identifyUser(String userId, dynamic userProperties) {
    if (userProperties is! UserTraits) {
      throw ArgumentError('Expected UserTraits for SegmentAdapter');
    }

    final traits = userProperties as UserTraits?;
    _client.identify(
      userId: userId,
      userTraits: traits,
    );
  }

  @override
  void trackEvent(String eventName, Map<String, dynamic>? properties) {
    _client.track(
      eventName,
      properties: properties,
    );
  }
}
