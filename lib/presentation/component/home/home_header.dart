import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('어떤 공연을 찾으시나요?', style: TextStyle(fontSize: 23)),
        ),
        Row(
          children: [
            const Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: TextField(
                    decoration: InputDecoration(border: OutlineInputBorder(), contentPadding: EdgeInsets.all(8))
                ),
              ),
            ),
            SizedBox(
                child: IconButton(onPressed: () {}, icon: const Icon(Icons.search, size: 40,))
            )
          ],
        ),
        Center(child: ElevatedButton(onPressed: () {}, child: SizedBox(width: 200, child: Center(child: Text('상세검색'))))),
      ],
    );
  }
}
