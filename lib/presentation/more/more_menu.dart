import 'package:flutter/material.dart';

class MoreMenu extends StatelessWidget {
  final String title;
  const MoreMenu({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 16, bottom: 16),
          width: double.infinity,
          child: Text(title),
        ),
        Divider(height: 1, color: Colors.grey.withOpacity(0.3),)
      ],
    );
  }
}
