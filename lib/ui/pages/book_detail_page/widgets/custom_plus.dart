import 'package:flutter/material.dart';
import 'package:flutter_blog/_core/constants/colors.dart';

class CustomPlus extends StatefulWidget {
  final String title;
  final String description;
  CustomPlus({required this.title, required this.description});
  @override
  State<CustomPlus> createState() => _CustomPlusState();
}

class _CustomPlusState extends State<CustomPlus> {
  bool isExpanded = false;

  void toggleDescription() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Text(isExpanded
                    ? widget.description
                    : _getShortenedDescription()),
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {
                toggleDescription();
              },
              child: Text(
                isExpanded ? "접어보기" : "더 보기",
                style: TextStyle(
                  color: kPointColor,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  String _getShortenedDescription() {
    final maxLength = 30; // 원하는 길이로 수정하세요
    if (widget.description.length <= maxLength) {
      return widget.description;
    }
    return widget.description.substring(0, maxLength) + '...';
  }
}
