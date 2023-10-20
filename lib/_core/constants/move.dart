import 'package:flutter/material.dart';
import 'package:flutter_blog/ui/pages/book_detail_page/book_detail_page.dart';
import 'package:flutter_blog/ui/pages/book_list_page/book_list_page.dart';

class Move {
  // TODO 1: 서버 측 엔드포인트 확인
  static String bookListPage = "/bookList";
  static String bookDetailPage = "/join";
}

Map<String, Widget Function(BuildContext)> getRouters() {
  return {
    Move.bookListPage: (context) => const BookListPage(),
    // Move.bookDetailPage: (context) => const BookDetailPage(),
  };
}
