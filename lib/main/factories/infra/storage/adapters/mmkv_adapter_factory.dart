import 'package:diocese_santos/infra/storage/adapters/mmkv_adapter.dart';

import 'package:mmkv/mmkv.dart';

Future<MMMKVAdapter> makeMMKVAdapter() async {
  await MMKV.initialize();

  final client = MMKV.defaultMMKV();

  return MMMKVAdapter(client: client);
}

MMMKVAdapter getMMKVInstance() {
  final client = MMKV.defaultMMKV();
  return MMMKVAdapter(client: client);
}
