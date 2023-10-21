import 'package:flutter/material.dart';
import 'package:flutter_blog/_core/constants/colors.dart';

class CustomCategoryButton extends StatelessWidget {
  final String label;
  final int index;
  final int pageIndex;
  final VoidCallback onPress;
  const CustomCategoryButton(
      {required this.label,
      required this.index,
      required this.pageIndex,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    bool isSelected = index == pageIndex; // isSelected 업데이트

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
        onPressed: () {
          onPress();
        },
        child: Text(label,
            style: TextStyle(color: isSelected ? kFontWhite : kFontBlack)),
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side:
                BorderSide(color: isSelected ? Colors.transparent : kBackGray),
          ),
          padding: EdgeInsets.symmetric(horizontal: 20),
          backgroundColor: isSelected ? kBackBlack : Colors.transparent,
        ),
      ),
    );
  }
}
