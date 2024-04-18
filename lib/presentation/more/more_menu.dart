import 'package:flutter/material.dart';

class MoreMenu extends StatelessWidget {
  final String title;
  const MoreMenu({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 16, bottom: 16),
          width: double.infinity,
          child: Text(title),
        ),
        Divider(height: 1, color: Colors.grey.withOpacity(0.3),)
      ],
    );
  }
}
