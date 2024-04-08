import 'package:flutter/material.dart';

class ConcertBox extends StatefulWidget {
  const ConcertBox({super.key});

  @override
  State<ConcertBox> createState() => _ConcertBoxState();
}

class _ConcertBoxState extends State<ConcertBox> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(image: NetworkImage('https://www.kopis.or.kr/upload/pfmPoster/PF_PF235646_240216_142033.jpg')),
        Text('더 글로우 (THE GLOW)'),
        Text('2024.04.13 ~ 2024.04.14', style: TextStyle(fontSize: 10, color: Colors.grey)),
      ],
    );
  }
}
