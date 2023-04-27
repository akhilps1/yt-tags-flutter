import 'package:flutter/material.dart';

class TabWidget extends StatelessWidget {
  const TabWidget({super.key, required this.tabName});
  final String tabName;

  @override
  Widget build(BuildContext context) {
    return Tab(
      text: tabName,
    );
  }
}
