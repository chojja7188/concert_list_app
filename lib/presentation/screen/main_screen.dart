import 'package:concert_list_app/config/ui_config.dart';
import 'package:concert_list_app/presentation/search/search_view_model.dart';
import 'package:concert_list_app/presentation/tab/home_tab.dart';
import 'package:concert_list_app/presentation/tab/more_tab.dart';
import 'package:concert_list_app/presentation/tab/search_tab.dart';
import 'package:concert_list_app/presentation/home/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> _tabs = [
    ChangeNotifierProvider(
        create: (_) => HomeViewModel(),
        child: HomeTab()
    ),
    ChangeNotifierProvider(
        create: (_) => SearchViewModel(),
        child: SearchTab()
    ),
    MoreTab()
  ];

  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          scrolledUnderElevation: 0,
          title: Image.asset('assets/images/mocon_logo_light.png', width: 140),
          centerTitle: true,
          backgroundColor: UiConfig.primaryColor),
      body: SafeArea(
          child: IndexedStack(
            index: _selectedTab,
            children: _tabs
          )
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) => setState(() {_selectedTab = value;}),
        currentIndex: _selectedTab,
        iconSize: 26,
        unselectedFontSize: 14,
        selectedLabelStyle: null,
        selectedIconTheme: IconThemeData(
          color: UiConfig.primaryColor,
          size: 34
        ),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: '홈',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined),
              activeIcon: Icon(Icons.search),
              label: '검색'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz_outlined),
              activeIcon: Icon(Icons.more_horiz),
              label: '더보기'
          )
        ],
      ),
    );
  }
}
