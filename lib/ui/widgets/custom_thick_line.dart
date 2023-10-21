import 'package:flutter/material.dart';

class ThickLine extends StatelessWidget {
  const ThickLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 10,
      decoration: BoxDecoration(
        color: Colors.grey,
      ),
    );
  }
}
