import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:teste_anim_color/helpers/is_web.dart';
import 'package:teste_anim_color/helpers/padding_device.dart';
import 'package:teste_anim_color/pages/tabs.dart';

class TopbarMenu extends StatelessWidget {
  final TabController _controller;
  TopbarMenu(this._controller);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(PaddingDevice.getPaddingValue()),
        child: Card(
          elevation: 10.0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100.0)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Otavio Miguel",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      heightFactor: 1.0,
                      alignment: Alignment.topRight,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TabBar(
                              mouseCursor: SystemMouseCursors.click,
                              controller: _controller,
                              labelColor: Colors.white,
                              unselectedLabelColor: Colors.redAccent,
                              indicator: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100.0),
                                  gradient: LinearGradient(colors: [
                                    Colors.redAccent,
                                    Colors.purple
                                  ])),
                              indicatorColor: Colors.black,
                              tabs: SessionPageTabs.getTabs(),
                              isScrollable: true,
                            ),
                            Visibility(
                              child: IconButton(
                                icon: Icon(Icons.add),
                                tooltip: "Instagram",
                                onPressed: () {},
                              ),
                              visible: IsWeb.check(),
                            ),
                            Visibility(
                              child: IconButton(
                                icon: Icon(Icons.people),
                                tooltip: "LinkedIn",
                                onPressed: () {},
                              ),
                              visible: IsWeb.check(),
                            ),
                            Visibility(
                              child: IconButton(
                                icon: Icon(Icons.more),
                                tooltip: "Github",
                                onPressed: () {},
                              ),
                              visible: IsWeb.check(),
                            ),
                            Visibility(
                              child: IconButton(
                                icon: Icon(Icons.plus_one),
                                tooltip: "Gitlab",
                                onPressed: () {},
                              ),
                              visible: IsWeb.check(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              width: double.infinity,
              height: 50.0,
            ),
          ),
        ),
      ),
    );
  }
}
