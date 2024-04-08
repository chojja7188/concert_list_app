import 'package:concert_list_app/presentation/component/home/concert_list.dart';
import 'package:concert_list_app/presentation/component/home/home_header.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HomeHeader(),
          ConcertList(),
        ],
      ),
    );
  }
}
