import 'package:dio/dio.dart';

class Books {
  late dynamic bookList;

  Future<void> getBooks(String searchTerm) async {
    try {
      Response response = await Dio().get(
          'https://www.googleapis.com/books/v1/volumes?q=$searchTerm');
      bookList = response.data;
    } catch (e) {
      print(e);
    }
  }
}
