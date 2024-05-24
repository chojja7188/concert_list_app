import 'package:flutter/material.dart';

class StateBadge extends StatelessWidget {
  final String state;
  const StateBadge({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    if (state == '공연완료') {
      return Container(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 3, bottom: 4),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: const Color(0xffcacaca), width: 1),
              color: Colors.white
          ),
          child: Text(state, style: const TextStyle(color: Color(0xffcacaca), fontSize: 10, fontWeight: FontWeight.bold),)
      );
    } else if (state == '공연중') {
      return Container(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 3, bottom: 4),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.redAccent
          ),
          child: const Text('공연당일', style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),)
      );
    } else {
      return Container(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 3, bottom: 4),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xff282828)
          ),
          child: Text(state, style: const TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),)
      );
    }
  }
}
