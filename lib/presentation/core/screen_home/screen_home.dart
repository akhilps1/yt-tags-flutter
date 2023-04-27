import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tags/presentation/core/screen_home/widgets/search_box.dart';
import 'package:tags/presentation/core/screen_home/widgets/tab_bar.dart';
import 'package:tags/presentation/core/screen_home/widgets/tab_widget.dart';

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
          systemOverlayStyle:
              const SystemUiOverlayStyle(statusBarColor: Colors.blue),
          elevation: 0,
          actions: const [
            SearchBox(),
          ],
          bottom: const TabBar(
            tabs: <Widget>[
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
