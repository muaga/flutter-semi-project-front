import 'package:flutter/material.dart';
import 'package:flutter_blog/data/model/Book.dart';
import 'package:flutter_blog/ui/pages/book_list_page/widgets/book_form.dart';

class BookListPage extends StatelessWidget {
  const BookListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
        padding: EdgeInsets.symmetric(horizontal: 20),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 1 / 1.5,
        ),
        itemCount: books.length,
        itemBuilder: (context, index) {
          return BookForm(books[index]);
        },
        // 더 많은 리스트 아이템을 추가할 수 있습니다.
      ),
    );
  }
}
