import 'package:concert_list_app/presentation/home/home_concert_box.dart';
import 'package:concert_list_app/presentation/home/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeConcertList extends StatefulWidget {
  const HomeConcertList({super.key});

  @override
  State<HomeConcertList> createState() => _HomeConcertListState();
}

class _HomeConcertListState extends State<HomeConcertList> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() => {
      context.read<HomeViewModel>().fetchImminentOnDayConcertList()
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HomeViewModel>();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: viewModel.imminentOnDayConcertList.map(
                      (e) => HomeConcertBox(concert: e)
              ).toList()
            ),
          ),
        ],
      ),
    );
  }
}
