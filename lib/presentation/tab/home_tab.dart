import 'package:concert_list_app/data/repository/concert_repository.dart';
import 'package:concert_list_app/presentation/home/home_concert_list.dart';
import 'package:concert_list_app/presentation/home/home_header.dart';
import 'package:concert_list_app/presentation/home/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeTab extends StatefulWidget {
  HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() => {
      context.read<HomeViewModel>().fetchImminentOnDayConcertList()
    });
  }

  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HomeViewModel>();
    return Scrollbar(
      child: SingleChildScrollView(
        child: Column(
          children: [
            HomeHeader(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('당일 임박 콘서트', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                  HomeConcertList(concertList: viewModel.imminentOnDayConcertList),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
