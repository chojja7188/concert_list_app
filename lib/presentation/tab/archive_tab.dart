import 'package:concert_list_app/presentation/archive/archive_concert_list.dart';
import 'package:concert_list_app/presentation/archive/archive_header.dart';
import 'package:concert_list_app/presentation/archive/archive_view_model.dart';
import 'package:concert_list_app/presentation/concert_detail/concert_detail_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ArchiveTab extends StatefulWidget {
  const ArchiveTab({super.key});

  @override
  State<ArchiveTab> createState() => _ArchiveTabState();
}

class _ArchiveTabState extends State<ArchiveTab> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() => context.read<ArchiveViewModel>().fetchArchivedConcert());
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<ArchiveViewModel>();
    return SingleChildScrollView(
      child: Column(
        children: [
          ArchiveHeader(),
          ArchiveConcertList(),
        ],
      ),
    );
  }
}
