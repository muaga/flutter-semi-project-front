import 'package:flutter/material.dart';
import 'package:flutter_blog/ui/pages/book_list_page/widgets/book_list_body.dart';

class BookListPage extends StatelessWidget {
  const BookListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookListBody(),
    );
  }
}
