import 'package:flutter/material.dart';
import 'package:teste_anim_color/animations/animated_background_container.dart';
import 'package:teste_anim_color/components/intro_session.dart';
import 'package:teste_anim_color/components/menu_topbar.dart';
import 'package:teste_anim_color/components/session_card.dart';
import 'package:teste_anim_color/pages/sessions.dart';
import 'package:teste_anim_color/pages/tabs.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: DefaultTabController(
          length: SessionPageTabs.getPages().length,
          child: Builder(
            builder: (context) {
              TabController _tabController = DefaultTabController.of(context);
              return Stack(
                children: [
                  ColorCycleBackground(),
                  IntroSession(_tabController),
                  TopbarMenu(_tabController),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
