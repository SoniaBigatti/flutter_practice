import 'package:flutter/material.dart';

class CustomCircularButton extends StatefulWidget {
  const CustomCircularButton({super.key, this.callback, this.operacion});
  final int? operacion;
  final VoidCallback? callback;

  @override
  State<CustomCircularButton> createState() => _CustomCircularButtonState();
}

class _CustomCircularButtonState extends State<CustomCircularButton> {
  int timesPressed = 0;
  Icon icon = const Icon(Icons.add);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(onPressed: _execute, child: icon);
  }

  VoidCallback? get _execute {
    timesPressed++;
    if (widget.operacion! > 0) {
      icon = const Icon(Icons.add);
    } else {
      icon = const Icon(Icons.remove);
    }
    setState(() {});
    return widget.callback;
  }
}
