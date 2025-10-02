abstract interface class StorageClient {
  /// Get a value
  /// [key] is the key to store the value
  String getString(String key);

  /// Store a value
  /// [key] is the key to store the value
  /// [value] is the value to store
  void setString(String key, String value);

  /// Clear all values
  void clear();
}
