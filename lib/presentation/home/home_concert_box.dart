import 'package:concert_list_app/data/model/concert.dart';
import 'package:flutter/material.dart';

class HomeConcertBox extends StatelessWidget {
  final Concert concert;
  const HomeConcertBox({super.key, required this.concert});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(image: NetworkImage(concert.posterPath), fit: BoxFit.contain, height: 200),
          Text(concert.name, maxLines: 2, overflow: TextOverflow.ellipsis),
          Text('${concert.startAt} ~ ${concert.endAt}', style: TextStyle(fontSize: 10, color: Colors.grey)),
        ],
      ),
    );
  }
}
