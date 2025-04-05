import 'package:diocese_santos/main/factories/ui/pages/forgot_password_page_factory.dart';
import 'package:diocese_santos/main/factories/ui/pages/login_page_factory.dart';
import 'package:diocese_santos/main/factories/ui/pages/onboarding_page_factory.dart';
import 'package:diocese_santos/main/factories/ui/pages/register/basic_data_page_factory.dart';
import 'package:diocese_santos/main/factories/ui/pages/register/complete_data_page_factory.dart';
import 'package:go_router/go_router.dart';

import 'routes.dart';

GoRouter router() => GoRouter(
      initialLocation: Routes.onboarding,
      debugLogDiagnostics: true,
      routes: [
        GoRoute(path: Routes.home, builder: (_, __) => makeLoginPage()),
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
      ],
    );
