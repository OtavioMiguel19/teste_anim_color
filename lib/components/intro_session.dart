import 'package:flutter/material.dart';
import 'package:teste_anim_color/pages/sessions.dart';

class IntroSession extends StatelessWidget {
  final TabController _controller;
  IntroSession(this._controller);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100.0,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
              child: Column(
            children: [
              Text(
                "Jose Otavio Miguel",
                style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Full stack developer",
                style: TextStyle(fontSize: 15.0, color: Colors.white),
              )
            ],
          )),
        ),
        Expanded(child: SessionsPage(_controller))

        // SessionCard(Column(
        //   children: [Text("a"), Text("b")],
        // )),
      ],
    );
  }
}
