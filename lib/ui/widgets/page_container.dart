import 'package:flutter/material.dart';

class PageContainer extends StatelessWidget {
  const PageContainer({
    super.key,
    required this.children,
    this.isAFormPage = false,
  });

  final List<Widget> children;
  final bool isAFormPage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
