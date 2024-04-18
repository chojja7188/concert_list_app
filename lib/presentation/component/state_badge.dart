import 'package:flutter/material.dart';

class StateBadge extends StatelessWidget {
  final String state;
  const StateBadge({Key? key, required this.state}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (state == '공연완료') {
      return Container(
          padding: EdgeInsets.only(left: 8, right: 8, top: 3, bottom: 4),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Color(0xffcacaca), width: 1),
              color: Colors.white
          ),
          child: Text(state, style: TextStyle(color: Color(0xffcacaca), fontSize: 10, fontWeight: FontWeight.bold),)
      );
    } else if (state == '공연중') {
      return Container(
          padding: EdgeInsets.only(left: 8, right: 8, top: 3, bottom: 4),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.redAccent
          ),
          child: Text('공연당일', style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),)
      );
    } else {
      return Container(
          padding: EdgeInsets.only(left: 8, right: 8, top: 3, bottom: 4),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color(0xff282828)
          ),
          child: Text(state, style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),)
      );
    }
  }
}
