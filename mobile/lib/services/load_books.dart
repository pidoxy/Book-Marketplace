import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:library_app/models/book_model.dart';
import 'package:library_app/utils/constants.dart';

class AppServices {
  static Future<List<BookModel>> loadBooks() async {
    List<BookModel> bookList = [];
    await Future.delayed(const Duration(milliseconds: 1500), () async {
      final jsonFile = await rootBundle.loadString(AppConst.BOOK_PATH);
      final List<dynamic> rawBooks = jsonDecode(jsonFile);
      bookList = rawBooks.map((e) => BookModel.fromJson(json: e)).toList();
    });

    bookList.shuffle();
    return bookList;
  }
}
