import 'package:diocese_santos/infra/tracking/adapters/segment_adapter.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:segment_analytics/client.dart';
import 'package:segment_analytics/state.dart';

SegmentAdapter makeSegmentAdapter() {
  final writeKey = dotenv.env['SEGMENT_WRITE_KEY'] ?? '';
  final client = createClient(
    Configuration(
      writeKey,
      trackApplicationLifecycleEvents: true,
    ),
  );

  return SegmentAdapter(client: client);
}
