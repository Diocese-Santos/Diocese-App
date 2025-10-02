import 'package:diocese_santos/infra/storage/adapters/mmkv_adapter.dart';

import 'package:mmkv/mmkv.dart';

MMMKVAdapter makeMMKVAdapter() {
  final client = MMKV.defaultMMKV();

  return MMMKVAdapter(client: client);
}
