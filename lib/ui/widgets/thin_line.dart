import 'package:flutter/material.dart';

class ThinLine extends StatelessWidget {
  const ThinLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 0.5,
      decoration: BoxDecoration(
        color: Colors.grey,
      ),
    );
  }
}
