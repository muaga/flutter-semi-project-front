import 'package:dio/dio.dart';
import 'package:flutter_blog/_core/constants/http.dart';
import 'package:flutter_blog/data/dto/response.dart';
import 'package:flutter_blog/data/model/Book.dart';

// 통신 & 파싱
class BookRepository {
  // 책 상세보기
  Future<ResponseDTO> fetchBookDetail(int id) async {
    try {
      // 통신
      Response response = await dio.get("/books/$id");
      // 파싱
      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
      Book book = Book.fromJson(responseDTO.data);
      responseDTO.data = book;

      return responseDTO;
    } catch (e) {
      return ResponseDTO(-1, "책 한건 불러오기 실패", null);
    }
  }

  // 책 목록보기
  Future<ResponseDTO> fetchBookList() async {
    try {
      // 통신
      Response<dynamic> response = await dio.get("/books");

      // 파싱
      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
      List<dynamic> mapList = responseDTO.data as List<dynamic>;
      List<Book> bookList = mapList.map((e) => Book.fromJson(e)).toList();

      responseDTO.data = bookList;
      return responseDTO;
    } catch (e) {
      return ResponseDTO(-1, "책 목록 불러오기 실패", null);
    }
  }
}

//  Future<ResponseDTO> fetchPostList(String jwt) async {
//     try {
//       // 1. 통신
//       final response = await dio.get("/post",
//           options: Options(headers: {"Authorization": "${jwt}"}));
//
//       // 2. ResponseDTO 파싱
//       ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
//
//       // 3. ResponseDTO의 data 파싱
//       List<dynamic> mapList = responseDTO.data as List<dynamic>;
//       List<Post> postList = mapList.map((e) => Post.fromJson(e)).toList();
//
//       // 4. 파싱된 데이터를 다시 공통 DTO로 덮어씌우기
//       responseDTO.data = postList;
//
//       return responseDTO;
//     } catch (e) {
//       return ResponseDTO(-1, "게시글 목록 불러오기 실패", null);
//     }
//   }
