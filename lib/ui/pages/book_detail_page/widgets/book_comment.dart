import 'package:flutter/material.dart';

class BookComment extends StatelessWidget {
  const BookComment({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "에르메스 조향사가 안내하는 향수 식물학 세계\n"
              "식물의 향과 향수에 관한 다채로운 이야기",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
