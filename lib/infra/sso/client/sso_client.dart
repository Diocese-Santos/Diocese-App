import 'package:diocese_santos/domain/entites/user.dart';

abstract interface class SSOClient {
  /// Sign in with Google
  Future<User> signInWithGoogle();
}
