import 'package:flutter/material.dart';
import 'package:flutter_blog/ui/pages/book_detail_page/book_detail_page.dart';
import 'package:flutter_blog/ui/pages/book_list_page/book_list_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // key 파라미터에 대한 초기화를 추가

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/detail",
      routes: {
        "/list": (context) => BookListPage(),
        "/detail": (context) => BookDetailPage(),
      },
    );
  }
}
