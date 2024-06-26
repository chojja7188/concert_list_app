import 'package:concert_list_app/presentation/home/home_concert_list.dart';
import 'package:concert_list_app/presentation/home/home_header.dart';
import 'package:concert_list_app/presentation/home/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() => {
      context.read<HomeViewModel>().fetchHomeConcertList(context)
    });
  }

  @override
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
            const HomeHeader(),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HomeConcertList(
                      title: '최신 공연',
                      description: '신규로 등록된 공연입니다.',
                      concertList: viewModel.newConcertList
                  ),
                  HomeConcertList(
                    title: '오늘의 공연',
                    description: '공연일이 금일 당일인 공연입니다.',
                    concertList: viewModel.todayConcertList
                  ),
                  HomeConcertList(
                    title: '공연 예정일 임박 공연',
                    description: '공연 예정일이 3일 이내인 공연입니다.',
                    concertList: viewModel.imminentOnDayConcertList
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
