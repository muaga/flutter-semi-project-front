import 'package:flutter/material.dart';
import 'package:flutter_blog/ui/pages/book_list_page/book_list_page.dart';

class Move {
  // TODO 1: 서버 측 엔드포인트 확인
  static String bookListPage = "/books";
}

Map<String, Widget Function(BuildContext)> getRouters() {
  return {
    Move.bookListPage: (context) => const BookListPage(),
  };
}
