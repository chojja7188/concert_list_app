import 'package:concert_list_app/config/ui_config.dart';
import 'package:concert_list_app/presentation/search/search_concert_list.dart';
import 'package:concert_list_app/presentation/search/search_header.dart';
import 'package:concert_list_app/presentation/search/search_input.dart';
import 'package:concert_list_app/presentation/search/search_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

class SearchTab extends StatelessWidget {
  const SearchTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Column(
            children: [
              SearchHeader(),
              SearchInput(),
              SearchConcertList(),
            ],
          ),
        ],
      ),
    );
  }
}
