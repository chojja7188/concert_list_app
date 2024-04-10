import 'package:concert_list_app/data/repository/concert_repository.dart';
import 'package:concert_list_app/presentation/component/home/home_concert_list.dart';
import 'package:concert_list_app/presentation/component/home/home_header.dart';
import 'package:concert_list_app/view_model/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeTab extends StatefulWidget {
  final HomeViewModel viewModel;
  HomeTab({required this.viewModel});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  void initState() {
    super.initState();
    widget.viewModel.fetchImminentOnDayConcertList();
  }

  @override
  void dispose() {
    widget.viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => widget.viewModel,
      child: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HomeHeader(),
              Consumer<HomeViewModel>(
                builder: (context, main, child) {
                  return Column(
                    children: [
                      Text('당일 임박 콘서트'),
                      HomeConcertList(),
                    ],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
