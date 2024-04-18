import 'package:concert_list_app/domain/model/concert.dart';
import 'package:concert_list_app/presentation/home/home_concert_box.dart';
import 'package:flutter/material.dart';

class HomeConcertList extends StatelessWidget {
  final String title;
  final String description;
  final List<Concert> concertList;

  const HomeConcertList({super.key, required this.title, required this.description, required this.concertList});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
        const SizedBox(height: 4),
        Text(description, style: const TextStyle(fontSize: 12)),
        const SizedBox(height: 16),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: concertList.map(
                    (e) => Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: HomeConcertBox(concert: e)
                    )
            ).toList(),
          ),
        ),
        const SizedBox(height: 32)
      ],
    );
  }
}
