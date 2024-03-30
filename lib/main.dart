import 'package:concert_list_app/concert_list_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.black87,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black87),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Title', style: TextStyle(color: Colors.white)),
          centerTitle: true,
          backgroundColor: Colors.black87),
        body: const SingleChildScrollView(child: MainPage()),
      )
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
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
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: ConcertListView(),
        ),
      ],
    );
  }
}
