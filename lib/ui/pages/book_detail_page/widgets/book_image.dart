import 'package:flutter/material.dart';
import 'package:flutter_blog/_core/constants/size.dart';

class BookImage extends StatelessWidget {
  final String picUrl;
  const BookImage({required this.picUrl});

  @override
  Widget build(BuildContext context) {
    double imageHeight = getScreenHeight(context) / 2.5; // 책 이미지의 높이
    double imageWidth = imageHeight * 1 / 1.4;

    return Center(
      child: Container(
        height: imageHeight,
        width: imageWidth,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(picUrl),
            fit: BoxFit.contain,
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
