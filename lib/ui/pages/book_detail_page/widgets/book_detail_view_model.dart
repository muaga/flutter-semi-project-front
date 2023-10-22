// 창고 데이터
import 'package:flutter_blog/data/dto/response.dart';
import 'package:flutter_blog/data/model/Book.dart';
import 'package:flutter_blog/data/repository/book_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// 창고 데이터
class BookDetailModel {
  Book book;
  BookDetailModel(this.book);
}

// 창고
class BookDetailViewModel extends StateNotifier<BookDetailModel?> {
  BookDetailViewModel(super._state, this.ref);
  Ref ref;

  Future<void> notifyInit(int id) async {
    ResponseDTO responseDTO = await BookRepository().fetchBookDetail(id);

    state = BookDetailModel(responseDTO.data);
  }
}

// 창고 관리자
final bookDetailProvider =
    StateNotifierProvider.autoDispose<BookDetailViewModel, BookDetailModel?>(
        (ref) {
  return BookDetailViewModel(null, ref)..notifyInit(1);
});
