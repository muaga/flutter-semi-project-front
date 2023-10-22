import 'package:flutter/material.dart';
import 'package:flutter_blog/data/model/Book.dart';
import 'package:flutter_blog/ui/pages/book_detail_page/widgets/book_detail_body.dart';
import 'package:flutter_blog/ui/pages/book_detail_page/widgets/book_detail_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BookDetailPage extends ConsumerWidget {
  final int bookId;
  const BookDetailPage({required this.bookId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bookDetailModel = ref.watch(bookDetailProvider(bookId));
    Book book;
    if (bookDetailModel == null) {
      return Center(child: CircularProgressIndicator());
    } else {
      book = bookDetailModel.book;
    }
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
        title: Text(""),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.star_border, color: Colors.black),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert, color: Colors.black),
          )
        ],
      ),
      body: BookDetailBody(book: book),
    );
  }
}
