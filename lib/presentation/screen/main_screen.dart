import 'package:concert_list_app/presentation/tab/home_tab.dart';
import 'package:concert_list_app/presentation/component/home/concert_list.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text('Title', style: TextStyle(color: Colors.white)),
            centerTitle: true,
            backgroundColor: Colors.black87),
        body: SafeArea(
          child: HomeTab()
        )
    );
  }
}
