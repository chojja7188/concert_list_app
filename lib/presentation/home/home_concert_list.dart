import 'package:concert_list_app/data/model/concert.dart';
import 'package:concert_list_app/presentation/home/home_concert_box.dart';
import 'package:concert_list_app/presentation/home/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeConcertList extends StatelessWidget {
  final List<Concert> concertList;

  const HomeConcertList({super.key, required this.concertList});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: concertList.map(
                    (e) => Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: HomeConcertBox(concert: e),
                    )
            ).toList(),
          ),
        ),
      ],
    );
  }
}
