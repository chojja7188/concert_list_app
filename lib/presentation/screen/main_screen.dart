import 'package:concert_list_app/config/ui_config.dart';
import 'package:concert_list_app/presentation/tab/home_tab.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            scrolledUnderElevation: 0,
            title: Image.asset('assets/images/mocon_logo_light.png', width: 140),
            centerTitle: true,
            backgroundColor: UiConfig.primaryColor),
        body: SafeArea(
          child: HomeTab()
        )
    );
  }
}
