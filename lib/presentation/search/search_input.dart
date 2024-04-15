import 'package:concert_list_app/config/ui_config.dart';
import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32),
                      borderSide: BorderSide(
                          width: 1.4,
                          color: UiConfig.primaryColor
                      )
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32),
                      borderSide: BorderSide(
                          width: 2,
                          color: UiConfig.primaryColor
                      )
                  ),
                  hintText: '검색어를 입력하세요',
                  contentPadding: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                  suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search_sharp, color: UiConfig.primaryColor)
                  ),
                ),
                onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus()
            ),
          ),
        ),
      ],
    );
  }
}
