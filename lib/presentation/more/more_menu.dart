import 'package:flutter/material.dart';

class MoreMenu extends StatelessWidget {
  final String title;
  const MoreMenu({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: 1, color: Colors.grey))
      ),
      child: Text(title),
    );
  }
}
