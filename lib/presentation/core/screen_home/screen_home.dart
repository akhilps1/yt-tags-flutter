import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tags/presentation/core/screen_home/widgets/search_box.dart';
import 'package:tags/presentation/core/screen_home/widgets/tab_bar.dart';
import 'package:tags/presentation/core/screen_home/widgets/tab_widget.dart';

import '../../../application/core/colors.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          systemOverlayStyle: const SystemUiOverlayStyle(statusBarColor: kBlue),
          elevation: 0,
          actions: const [
            SearchBox(),
          ],
          bottom: TabBar(
            indicatorColor: kRed[500],
            unselectedLabelColor: kWhite.withOpacity(0.9),
            labelStyle: const TextStyle(
              color: kWhite,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
            indicatorWeight: 3,
            tabs: const <Widget>[
              TabWidget(tabName: 'TAGS'),
              TabWidget(tabName: 'DESCRIPTION'),
              TabWidget(tabName: 'THUMBNAIL'),
            ],
          ),
        ),
        body: Column(
          children: const [
            Expanded(
              child: TabBarWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
