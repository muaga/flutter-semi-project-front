import 'package:flutter/material.dart';

class BookTitleAndWriter extends StatelessWidget {
  const BookTitleAndWriter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            "[독점] 향수가 된 식물들",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),

          /// 간격: 5
          SizedBox(height: 5),

          /// 작은글자
          Text(
            "장 클로드 엘레나 지금 / 카린 도어링 프로저 그림 / 이주영 옮김",
            style: TextStyle(fontSize: 10, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
