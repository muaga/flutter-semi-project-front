import 'package:flutter/material.dart';

class DataInfo extends StatelessWidget {
  final String dataTitle;
  final String dataContent;

  DataInfo({
    required this.dataTitle,
    required this.dataContent,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          dataTitle,
          style: TextStyle(fontSize: 10, color: Colors.grey),
        ),
        SizedBox(height: 15),
        Text(
          dataContent,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
