import 'package:concert_list_app/config/ui_config.dart';
import 'package:concert_list_app/presentation/tab/home_tab.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    int _selectedPage = 0;
    return Scaffold(
      appBar: AppBar(
          scrolledUnderElevation: 0,
          title: Image.asset('assets/images/mocon_logo_light.png', width: 140),
          centerTitle: true,
          backgroundColor: UiConfig.primaryColor),
      body: SafeArea(
          child: HomeTab()
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) => setState(() {_selectedPage = value;}),
        currentIndex: _selectedPage,
        iconSize: 24,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: '홈'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined),
              label: '검색'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined),
              label: '마이페이지'
          )
        ],
      ),
    );
  }
}
