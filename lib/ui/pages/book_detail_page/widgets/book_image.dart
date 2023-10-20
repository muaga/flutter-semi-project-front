import 'package:flutter/material.dart';

class BookImage extends StatelessWidget {
  const BookImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 300,
        width: 230,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://picsum.photos/200/300"),
            fit: BoxFit.cover,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey, // 그림자 색상
              offset: Offset(4, 4), // 그림자 위치
              blurRadius: 20, // 그림자 흐림 정도
            ),
          ],
        ),
      ),
    );
  }
}
