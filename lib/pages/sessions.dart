import 'package:flutter/material.dart';
import 'package:teste_anim_color/pages/tabs.dart';

class SessionsPage extends StatelessWidget {
  final TabController _controller;

  SessionsPage(this._controller);

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: _controller,
      children: SessionPageTabs.getTabsWidget(),
    );
  }
}
