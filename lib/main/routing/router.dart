import 'package:diocese_santos/main/factories/ui/pages/login_page_factory.dart';
import 'package:go_router/go_router.dart';

import 'routes.dart';

GoRouter router() => GoRouter(
      initialLocation: Routes.home,
      debugLogDiagnostics: true,
      routes: [
        GoRoute(path: Routes.home, builder: (_, __) => makeLoginPage()),
      ],
    );
