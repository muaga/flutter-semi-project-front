import 'package:flutter/material.dart';
import 'package:flutter_blog/ui/pages/book_detail_page/widgets/data_info.dart';

class BookData extends StatelessWidget {
  const BookData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Colors.brown.shade100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          DataInfo(dataTitle: "카테고리", dataContent: "라이프스타일"),
          Container(height: 30, width: 1, color: Colors.grey),
          DataInfo(dataTitle: "페이지", dataContent: "228P"),
          Container(height: 30, width: 1, color: Colors.grey),
          DataInfo(dataTitle: "출간일", dataContent: "2023.09.03"),
        ],
      ),
    );
  }
}
