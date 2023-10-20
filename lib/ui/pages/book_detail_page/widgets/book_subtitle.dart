import 'package:flutter/material.dart';

class BookSubtitle extends StatelessWidget {
  const BookSubtitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "부제",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text("에르메스 조향사가 안내하는 향수 식물학의 세계"),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
