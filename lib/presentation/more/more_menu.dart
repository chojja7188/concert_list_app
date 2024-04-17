import 'package:flutter/material.dart';

class MoreMenu extends StatelessWidget {
  final String title;
  const MoreMenu({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(title),
    );
  }
}
