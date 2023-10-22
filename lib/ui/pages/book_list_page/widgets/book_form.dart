import 'package:flutter/material.dart';
import 'package:flutter_blog/data/model/Book.dart';

class BookForm extends StatelessWidget {
  final Book book;
  const BookForm(this.book);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
              image: AssetImage(book.picUrl ?? ""),
              fit: BoxFit.cover,
            ))),
          ),
          Container(
            height: 60,
            child: Column(
              children: [
                Text(
                  book.title ?? "",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis, // text ...
                ),
                Text(
                  book.writer ?? "",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis, // text ...
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
