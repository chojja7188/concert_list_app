import 'package:concert_list_app/presentation/component/home/concert_box.dart';
import 'package:flutter/material.dart';

class ConcertList extends StatefulWidget {
  const ConcertList({super.key});

  @override
  State<ConcertList> createState() => _ConcertListState();
}

class _ConcertListState extends State<ConcertList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 8,
            childAspectRatio: 1/2,
          ),
          itemCount: 12,
          itemBuilder: (BuildContext context, int index) {
            return ConcertBox();
          }
      ),
    );
  }
}
