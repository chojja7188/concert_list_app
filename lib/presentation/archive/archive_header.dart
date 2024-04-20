import 'package:flutter/material.dart';

class ArchiveHeader extends StatelessWidget {
  const ArchiveHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 16, right: 16, top: 24, bottom: 8),
        child: Text('즐겨찾기',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)
        ),
      ),
    );
  }
}
