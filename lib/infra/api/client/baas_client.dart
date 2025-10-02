abstract interface class BaaSClient {
  Future<List<dynamic>> get(String tableName);
}
