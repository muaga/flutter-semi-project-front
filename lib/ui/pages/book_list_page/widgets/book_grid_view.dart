import 'package:flutter/material.dart';
import 'package:flutter_blog/_core/constants/size.dart';
import 'package:flutter_blog/data/model/Book.dart';
import 'package:flutter_blog/ui/pages/book_detail_page/book_detail_page.dart';
import 'package:flutter_blog/ui/pages/book_list_page/widgets/book_form.dart';
import 'package:flutter_blog/ui/pages/book_list_page/widgets/book_list_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BookGridView extends ConsumerWidget {
  final int bookId;
  const BookGridView({required this.bookId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    BookListModel? model = ref.read(bookListProvider);
    List<Book> books = [];
    if (model == null) {
      return Center(child: CircularProgressIndicator());
    } else {
      books = model.books;
    }

    return Container(
      width: getScreenWidth(context),
      height: getScreenHeight(context),
      child: GridView.builder(
        padding: EdgeInsets.symmetric(horizontal: 20),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 1 / 2,
        ),
        itemCount: books.length,
        itemBuilder: (context, index) {
          return InkWell(
              onTap: () {
                int? bookId = books[index].id;
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            BookDetailPage(bookId: bookId ?? 0)));

                /// ?가 붙는 변수는 꼭 null일 때의 디폴트값을 명시해줄것
              },
              child: BookForm(books[index]));
        },
        // 더 많은 리스트 아이템을 추가할 수 있습니다.
      ),
    );
  }
}
