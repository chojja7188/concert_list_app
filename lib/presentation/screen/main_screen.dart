import 'package:concert_list_app/config/ui_config.dart';
import 'package:concert_list_app/presentation/tab/home_tab.dart';
import 'package:concert_list_app/presentation/tab/more_tab.dart';
import 'package:concert_list_app/presentation/tab/search_tab.dart';
import 'package:concert_list_app/view_model/home_view_model.dart';
import 'package:concert_list_app/view_model/main_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  final List<Widget> _tabs = [
    HomeTab(viewModel: HomeViewModel()),
    SearchTab(),
    MoreTab()
  ];

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();
    return Scaffold(
      appBar: AppBar(
          scrolledUnderElevation: 0,
          title: Image.asset('assets/images/mocon_logo_light.png', width: 140),
          centerTitle: true,
          backgroundColor: UiConfig.primaryColor),
      body: SafeArea(
          child: Consumer<MainViewModel>(
            builder: (context, main, child) {
              return IndexedStack(
                index: viewModel.selectedTab,
                children: _tabs,
              );
              // return _tabs.elementAt(viewModel.selectedTab);
            },
          )
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) => viewModel.moveTab(value),
        currentIndex: viewModel.selectedTab,
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
