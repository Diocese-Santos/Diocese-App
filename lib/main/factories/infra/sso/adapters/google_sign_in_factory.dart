import 'package:diocese_santos/infra/sso/adapters/google_sign_in_adapter.dart';

import 'package:google_sign_in/google_sign_in.dart';

GoogleSignInAdapter makeGoogleSignInAdapter() {
  final client = GoogleSignIn.instance;

  return GoogleSignInAdapter(client: client);
}
