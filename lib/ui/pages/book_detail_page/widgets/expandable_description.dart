import 'package:flutter/material.dart';

class ExpandableDescription extends StatefulWidget {
  final String title;
  final String description;

  ExpandableDescription({required this.title, required this.description});

  @override
  State<ExpandableDescription> createState() => _ExpandableDescriptionState();
}

class _ExpandableDescriptionState extends State<ExpandableDescription> {
  bool isExpanded = false;

  void toggleDescription() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        widget.title,
        style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      trailing: Icon(
        isExpanded ? Icons.expand_less : Icons.expand_more, // 확장 및 축소 아이콘 변경
        color: Colors.black, // 아이콘 색상
      ),
      onExpansionChanged: (bool expanding) {
        toggleDescription();
      },
      children: <Widget>[
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(16.0),
          child: Text(
            widget.description,
            style: TextStyle(fontSize: 16.0, color: Colors.black),
            textAlign: TextAlign.left,
          ),
        ),
      ],
      initiallyExpanded: isExpanded,
    );
  }
}
