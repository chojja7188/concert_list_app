import 'package:concert_list_app/widget/concert_box.dart';
import 'package:flutter/material.dart';

class ConcertListView extends StatefulWidget {
  const ConcertListView({super.key});

  @override
  State<ConcertListView> createState() => _ConcertListViewState();
}

class _ConcertListViewState extends State<ConcertListView> {
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
