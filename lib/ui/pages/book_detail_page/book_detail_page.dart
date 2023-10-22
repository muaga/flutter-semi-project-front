import 'package:flutter/material.dart';
import 'package:flutter_blog/ui/pages/book_detail_page/widgets/book_detail_body.dart';

class BookDetailPage extends StatelessWidget {
  // final int bookId;
  const BookDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: BookDetailBody(),
    );
  }
}
