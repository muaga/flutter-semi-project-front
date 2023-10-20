import 'package:flutter/material.dart';
import 'package:flutter_blog/ui/pages/book_list_page/widgets/book_list_body.dart';
import 'package:flutter_blog/ui/widgets/custom_bottom_bar.dart';

class BookListPage extends StatelessWidget {
  const BookListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
        title: Text("한 달 이내에 출간된 책"),
      ),
      body: BookListBody(),
    );
  }
}
