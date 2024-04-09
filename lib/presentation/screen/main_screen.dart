import 'package:concert_list_app/config/ui_config.dart';
import 'package:concert_list_app/presentation/tab/home_tab.dart';
import 'package:concert_list_app/presentation/tab/my_page_tab.dart';
import 'package:concert_list_app/presentation/tab/search_tab.dart';
import 'package:concert_list_app/view_model/main_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  final List<Widget> _tabs = [
    HomeTab(),
    SearchTab(),
    MyPageTab()
  ];

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<MainViewModel>(context);
    return Scaffold(
      appBar: AppBar(
          scrolledUnderElevation: 0,
          title: Image.asset('assets/images/mocon_logo_light.png', width: 140),
          centerTitle: true,
          backgroundColor: UiConfig.primaryColor),
      body: SafeArea(
          child: Consumer<MainViewModel>(
            builder: (context, main, child) {
              return _tabs.elementAt(viewModel.selectedTab);
            },
          )
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) => viewModel.moveTab(value),
        currentIndex: viewModel.selectedTab,
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
