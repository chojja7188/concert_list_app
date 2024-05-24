import 'package:concert_list_app/config/ui_config.dart';
import 'package:concert_list_app/di/di_setup.dart';
import 'package:concert_list_app/domain/service/toast_service.dart';
import 'package:concert_list_app/presentation/archive/archive_view_model.dart';
import 'package:concert_list_app/presentation/search/search_view_model.dart';
import 'package:concert_list_app/presentation/tab/archive_tab.dart';
import 'package:concert_list_app/presentation/tab/home_tab.dart';
import 'package:concert_list_app/presentation/tab/more_tab.dart';
import 'package:concert_list_app/presentation/tab/search_tab.dart';
import 'package:concert_list_app/presentation/home/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> _tabs = [
    ChangeNotifierProvider(
        create: (_) => getIt<HomeViewModel>(),
        child: HomeTab()
    ),
    ChangeNotifierProvider(
        create: (_) => getIt<SearchViewModel>(),
        child: const SearchTab()
    ),
    ChangeNotifierProvider(
      create: (_) => getIt<ArchiveViewModel>(),
        child: const ArchiveTab()),
    const MoreTab()
  ];

  int _selectedTab = 0;
  DateTime? _currentTime;

  @override
  Widget build(BuildContext context) {
    return BackButtonListener(
      onBackButtonPressed: () async {
        if (context.canPop() == true) {
          return Future.value(false);
        }
        if (_selectedTab != 0) {
          setState(() {
            _selectedTab = 0;
          });
          return Future.value(true);
        } else {
          DateTime now = DateTime.now();
          if (_currentTime == null ||
              now.difference(_currentTime!) > const Duration(seconds: 2)) {
            _currentTime = now;
            ToastService().showToast('뒤로가기 버튼을 한 번 더 누르면 종료됩니다');
            return Future.value(true);
          } else {
            return Future.value(false);
          }
        }
      },
      child: Scaffold(
        appBar: AppBar(
            scrolledUnderElevation: 0,
            title: GestureDetector(
              onTap: () {
                setState(() {
                  _selectedTab = 0;
                });
              },
              child: Image.asset('assets/images/mocon_logo_light.png', width: 100)
            ),
            centerTitle: true,
            backgroundColor: UiConfig.primaryColor),
        body: SafeArea(
            child: _tabs[_selectedTab]
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              _selectedTab = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedTab,
          iconSize: 26,
          unselectedFontSize: 14,
          selectedLabelStyle: null,
          selectedIconTheme: const IconThemeData(
            color: UiConfig.primaryColor,
            size: 34
          ),
          items: const [
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
              icon: Icon(Icons.star_border),
              activeIcon: Icon(Icons.star),
              label: '즐겨찾기'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz_outlined),
                activeIcon: Icon(Icons.more_horiz),
                label: '더보기'
            )
          ],
        ),
      ),
    );
  }
}
