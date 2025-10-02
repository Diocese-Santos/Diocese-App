import 'package:diocese_santos/main/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PageContainer extends StatelessWidget {
  const PageContainer({
    super.key,
    this.child,
    this.children,
    this.isAFormPage = false,
    this.showBottomNavigationBar = false,
  });

  final List<Widget>? children;
  final Widget? child;
  final bool isAFormPage;
  final bool showBottomNavigationBar;

  @override
  Widget build(BuildContext context) {
    int currentIndex() {
      final String location = GoRouterState.of(context).uri.toString();
      if (location == Routes.home) {
        return 0;
      } else if (location == Routes.churches) {
        return 1;
      } else if (location == Routes.history) {
        return 2;
      }
      return 0;
    }

    return Scaffold(
      backgroundColor: Color(0xffFCFCFC),
      bottomNavigationBar:
          showBottomNavigationBar
              ? BottomNavigationBar(
                currentIndex: currentIndex(),
                onTap: (index) {
                  switch (index) {
                    case 0:
                      context.push(Routes.home);
                      break;
                    case 1:
                      context.push(Routes.churches);
                      break;
                  }
                },
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home_filled),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.church_outlined),
                    label: 'Paróquias',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.map_outlined),
                    label: 'Mapa',
                  ),
                ],
              )
              : null,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child:
                    child ??
                    (isAFormPage
                        ? Form(child: Column(children: children ?? []))
                        : Column(children: children ?? [])),
              ),
            ),
          );
        },
      ),
    );
  }
}
