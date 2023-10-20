import 'package:flutter/material.dart';
import 'package:flutter_blog/data/model/Book.dart';

class BookForm extends StatelessWidget {
  final Book book;

  const BookForm(this.book);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Column(
        children: [
          Image.asset(book.bookImage, fit: BoxFit.cover),
          Text(
            book.title,
            style: TextStyle(
              fontSize: 16, // Adjust the font size as needed
              fontWeight: FontWeight.bold, // You can change the font weight
              color: Colors.black, // You can set the text color
            ),
          ),
          Text(
            book.author,
            style: TextStyle(
              fontSize: 13, // Adjust the font size as needed
              fontWeight: FontWeight.bold, // You can change the font weight
              color: Colors.grey, // You can set the text color
            ),
          ),
        ],
      ),
    );
  }
}
