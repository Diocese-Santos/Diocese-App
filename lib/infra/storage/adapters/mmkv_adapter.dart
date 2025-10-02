import 'package:diocese_santos/infra/storage/client/storage_client.dart';

import 'package:mmkv/mmkv.dart';

final class MMMKVAdapter implements StorageClient {
  final MMKV client;

  MMMKVAdapter({required this.client});

  @override
  String getString(String key) {
    return client.decodeString(key) ?? '';
  }

  @override
  void setString(String key, String value) {
    client.encodeString(key, value);
  }
}
