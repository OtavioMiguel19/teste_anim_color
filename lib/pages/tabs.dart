import 'package:flutter/material.dart';
import 'package:teste_anim_color/components/session_card.dart';

class SessionPageTabs {
  static List<PageTabs> getPages() {
    List<PageTabs> _pages = List();
    _pages.add(PageTabs.build("Knowledges", SessionCard(Text("a"))));
    _pages.add(PageTabs.build("Education", SessionCard(Text("b"))));
    _pages.add(PageTabs.build("Studies", SessionCard(Text("c"))));
    _pages.add(PageTabs.build("Experiences", SessionCard(Text("d"))));
    _pages.add(PageTabs.build("Projects", SessionCard(Text("e"))));
    _pages.add(PageTabs.build("Languages", SessionCard(Text("f"))));
    return _pages;
  }

  static List<Tab> getTabs() {
    List<Tab> _tabs = List();
    for (PageTabs page in getPages()) {
      _tabs.add(Tab(
        text: page.title,
      ));
    }
    return _tabs;
  }

  static List<Widget> getTabsWidget() {
    List<Widget> _tabs = List();
    for (PageTabs page in getPages()) {
      _tabs.add(page.page);
    }
    return _tabs;
  }
}

class PageTabs {
  String title;
  Widget page;

  PageTabs();
  PageTabs.withTitle(this.title);
  PageTabs.build(this.title, this.page);
}
