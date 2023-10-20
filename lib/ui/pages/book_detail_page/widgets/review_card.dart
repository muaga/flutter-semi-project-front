import 'package:flutter/material.dart';

class ReviewCard extends StatelessWidget {
  final String username;
  final String writeAt;
  final String review;
  const ReviewCard(
      {required this.username, required this.writeAt, required this.review});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(16),
      leading: CircleAvatar(
        radius: 20,
        backgroundImage: AssetImage("assets/user_images/avatar.png"),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            username,
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          Text(
            writeAt,
            style: TextStyle(
              fontSize: 10,
            ),
          )
        ],
      ),
      subtitle: Text(
        review,
        style: TextStyle(
          fontSize: 15,
        ),
      ),
      trailing: InkWell(
        onTap: () {},
        child: Icon(
          Icons.more_vert,
          color: Colors.black,
        ),
      ),
    );
  }
}
