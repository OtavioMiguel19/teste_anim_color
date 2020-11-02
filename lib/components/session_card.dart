import 'package:flutter/material.dart';
import 'package:teste_anim_color/helpers/padding_device.dart';

class SessionCard extends StatelessWidget {
  final Widget _child;

  SessionCard(this._child);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(PaddingDevice.getPaddingValue()),
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: _child,
              )
            ],
          ),
        ),
      ),
    );
  }
}
