import 'package:diocese_santos/main/factories/ui/pages/forgot_password_page_factory.dart';
import 'package:diocese_santos/main/factories/ui/pages/history_page_factory.dart';
import 'package:diocese_santos/main/factories/ui/pages/home_page_factory.dart';
import 'package:diocese_santos/main/factories/ui/pages/login_page_factory.dart';
import 'package:diocese_santos/main/factories/ui/pages/onboarding_page_factory.dart';
import 'package:diocese_santos/main/factories/ui/pages/register/basic_data_page_factory.dart';
import 'package:diocese_santos/main/factories/ui/pages/register/complete_data_page_factory.dart';
import 'package:diocese_santos/main/factories/ui/pages/register/upload_photo_page_factory.dart';
import 'package:diocese_santos/infra/storage/client/storage_client.dart';
import 'package:go_router/go_router.dart';

import 'package:segment_analytics/client.dart';

import 'routes.dart';

GoRouter router(StorageClient storageClient) {
  final userId = storageClient.getString('user_id');

  return GoRouter(
    initialLocation: userId.isEmpty ? Routes.onboarding : Routes.home,
    debugLogDiagnostics: true,
    observers: [ScreenObserver()],
    routes: [
      GoRoute(path: Routes.login, builder: (_, __) => makeLoginPage()),
      GoRoute(
        path: Routes.onboarding,
        builder: (_, __) => makeOnboardingPage(),
      ),
      GoRoute(
        path: Routes.forgotMyPassword,
        builder: (_, __) => makeForgotPasswordPage(),
      ),
      GoRoute(
        path: Routes.registerBasicData,
        builder: (_, __) => makeRegisterBasicDataPage(),
      ),
      GoRoute(
        path: Routes.registerCompleteData,
        builder: (_, __) => makeRegisterCompleteDataPage(),
      ),
      GoRoute(
        path: Routes.registerUploadPhoto,
        builder: (_, __) => makeRegisterUploadPhotoPage(),
      ),
      GoRoute(
        path: Routes.home,
        builder: (_, __) => makeHomePage(),
      ),
      GoRoute(
        path: Routes.history,
        builder: (_, __) => makeHistoryPage(),
      ),
    ],
  );
}
