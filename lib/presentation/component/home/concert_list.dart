import 'package:concert_list_app/widget/concert_box.dart';
import 'package:flutter/material.dart';

class ConcertList extends StatefulWidget {
  const ConcertList({super.key});

  @override
  State<ConcertList> createState() => _ConcertListState();
}

class _ConcertListState extends State<ConcertList> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ConcertBox(),
                ConcertBox()
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ConcertBox(),
                ConcertBox()
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ConcertBox(),
                ConcertBox()
              ],
            ),
          ),
        ],
      )
    );
  }
}
