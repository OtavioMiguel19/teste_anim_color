import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:teste_anim_color/components/padding_device.dart';
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
                    child: Text("Otavio Miguel"),
                  ),
                  Expanded(
                    child: Align(
                      heightFactor: 1.0,
                      alignment: Alignment.topRight,
                      child: TabBar(
                        dragStartBehavior: DragStartBehavior.down,
                        controller: _controller,
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.grey,
                        indicatorSize: TabBarIndicatorSize.label,
                        tabs: SessionPageTabs.getTabs(),
                        isScrollable: true,
                      ),
                    ),
                  )
                ],
              ),
              width: double.infinity,
            ),
          ),
        ),
      ),
    );
  }
}
