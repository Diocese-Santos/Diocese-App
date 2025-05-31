import 'package:flutter/material.dart';

class PageContainer extends StatelessWidget {
  const PageContainer({
    super.key,
    required this.children,
    this.isAFormPage = false,
    this.showBottomNavigationBar = false,
  });

  final List<Widget> children;
  final bool isAFormPage;
  final bool showBottomNavigationBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFCFCFC),
      bottomNavigationBar: showBottomNavigationBar
          ? BottomNavigationBar(
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
                child: isAFormPage
                    ? Form(child: Column(children: children))
                    : Column(children: children),
              ),
            ),
          );
        },
      ),
    );
  }
}
