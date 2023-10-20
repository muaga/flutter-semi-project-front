import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'widgets/book_detail_body.dart';

class BookDetailPage extends ConsumerWidget {
  const BookDetailPage();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      /// 앱바 시작
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.star_border, color: Colors.black),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert, color: Colors.black),
          )
        ],
      ),

      /// 리스트뷰 시작
      body: BookDetailViewBody(),
    );
  }
}
