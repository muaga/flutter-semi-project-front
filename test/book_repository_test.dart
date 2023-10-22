import 'package:dio/dio.dart';
import 'package:flutter_blog/_core/constants/http.dart';
import 'package:flutter_blog/data/dto/response.dart';
import 'package:flutter_blog/data/model/Book.dart';
import 'package:logger/logger.dart';

void main() async {
  await fetch();
}

Future<void> fetch() async {
  Response<dynamic> response = await dio.get("/books");
  // Logger().d(response.headers);
  // Logger().d(response.data);
  ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
  // Logger().d(responseDTO.code);
  // Logger().d(responseDTO.data);
  List<dynamic> mapList = responseDTO.data as List<dynamic>;
  Logger().d(mapList);
  List<Book> bookList = mapList.map((e) => Book.fromJson(e)).toList();
  responseDTO.data = bookList;
  print(bookList[0].content);
  print(bookList[0].title);
  print(bookList[0].picUrl);
}
