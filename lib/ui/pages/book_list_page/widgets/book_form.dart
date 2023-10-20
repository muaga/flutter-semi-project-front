import 'package:flutter/material.dart';

class bookForm extends StatelessWidget {
  // final String bookImg;
  // final String bookTitle;
  // final String bookWriter;

  const bookForm(
      // this.bookImg,
      // this.bookTitle,
      // this.bookWriter,
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/book_images/book1.png'),
        Text(
          '트렌드코리아2024',
          style: TextStyle(
            fontSize: 16, // Adjust the font size as needed
            fontWeight: FontWeight.bold, // You can change the font weight
            color: Colors.black, // You can set the text color
          ),
        ),
        Text(
          '김난도 외',
          style: TextStyle(
            fontSize: 13, // Adjust the font size as needed
            fontWeight: FontWeight.bold, // You can change the font weight
            color: Colors.grey, // You can set the text color
          ),
        ),
      ],
    );
  }
}
