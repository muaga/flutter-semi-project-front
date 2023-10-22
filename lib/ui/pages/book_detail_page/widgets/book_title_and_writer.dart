import 'package:flutter/material.dart';

class BookTitleAndWriter extends StatelessWidget {
  final String title;
  final String writer;

  const BookTitleAndWriter({required this.title, required this.writer});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),

          /// 간격: 5
          SizedBox(height: 10),

          /// 작은글자
          Text(
            writer,
            style: TextStyle(fontSize: 15, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
