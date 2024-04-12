import 'package:concert_list_app/data/model/concert.dart';
import 'package:flutter/material.dart';

class HomeConcertBox extends StatelessWidget {
  final Concert concert;
  const HomeConcertBox({super.key, required this.concert});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      height: 400,
      child: Column(
        children: [
          Image(image: NetworkImage(concert.posterPath), fit: BoxFit.cover, height: 200),
          Text('더 글로우 (THE GLOW)'),
          Text('2024.04.13 ~ 2024.04.14', style: TextStyle(fontSize: 10, color: Colors.grey)),
        ],
      ),
    );
  }
}
