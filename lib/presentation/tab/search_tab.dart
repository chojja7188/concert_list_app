import 'package:flutter/material.dart';

class SearchTab extends StatelessWidget {
  const SearchTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: TextField(
                  decoration: InputDecoration(border: OutlineInputBorder(), contentPadding: EdgeInsets.all(8)),
                  onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus()
              ),
            ),
          ),
          SizedBox(
              child: IconButton(onPressed: () {}, icon: const Icon(Icons.search, size: 40,))
          )
        ],
      )
    );
  }
}
