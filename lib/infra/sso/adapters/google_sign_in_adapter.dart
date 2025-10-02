import 'package:diocese_santos/domain/entites/errors.dart';
import 'package:diocese_santos/domain/entites/user.dart';
import 'package:diocese_santos/infra/sso/client/sso_client.dart';
import 'package:google_sign_in/google_sign_in.dart';

final class GoogleSignInAdapter implements SSOClient {
  final GoogleSignIn client;

  GoogleSignInAdapter({required this.client});

  @override
  Future<User> signInWithGoogle() async {
    try {
      final googleUser = await client.authenticate();

      final user = User(
        id: googleUser.id,
        name: googleUser.displayName ?? 'User',
        email: googleUser.email,
        photoUrl: googleUser.photoUrl,
      );

      return user;
    } catch (e) {
      throw UnexpectedError();
    }
  }
}
