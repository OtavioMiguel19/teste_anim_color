import 'package:flutter/material.dart';

class TopbarMenuItem extends StatelessWidget {
  final String _title;
  final Function _callback;
  TopbarMenuItem(this._title, this._callback);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _callback,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(_title),
      ),
    );
  }
}
