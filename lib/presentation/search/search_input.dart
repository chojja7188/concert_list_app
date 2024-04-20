import 'package:concert_list_app/config/ui_config.dart';
import 'package:concert_list_app/presentation/search/search_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<SearchViewModel>();
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: TextField(
              controller: viewModel.searchController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32),
                      borderSide: const BorderSide(
                          width: 1.4,
                          color: UiConfig.primaryColor
                      )
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32),
                      borderSide: const BorderSide(
                          width: 2,
                          color: UiConfig.primaryColor
                      )
                  ),
                  hintText: '검색어를 입력하세요',
                  hintStyle: const TextStyle(fontSize: 14),
                  contentPadding: const EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                  suffixIcon: IconButton(
                      onPressed: () {
                        viewModel.reset();
                        viewModel.fetchSearchConcertList(context);
                      },
                      icon: const Icon(Icons.search_sharp, color: UiConfig.primaryColor)
                  ),
                ),
                onSubmitted: (value) {
                  viewModel.reset();
                  viewModel.fetchSearchConcertList(context);
                },
                onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus()
            ),
          ),
        ),
      ],
    );
  }
}
