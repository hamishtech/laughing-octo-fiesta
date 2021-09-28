import 'package:flutter/material.dart';
import 'package:hamish_bookshelf/pages/book.dart';
import 'package:hamish_bookshelf/services/book_service.dart';
import 'package:hamish_bookshelf/resources/resources.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  Resources resources = Resources();
  final searchController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    searchController.addListener(() {
      return setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          titleTextStyle: TextStyle(),
          backgroundColor: resources.colors.dark_primary,
          title: TextField(
              onSubmitted: (_) async {
                var books = Books();
                print(searchController.text);
                if (searchController.text.isEmpty) {
                } else {
                  await books.getBooks(searchController.text);
                  Navigator.pushNamed(
                    context,
                    '/results',
                    arguments: {
                      'results': books.bookList,
                      'searchTerm': searchController.text
                    },
                  );
                }
              },
              controller: searchController,
              textInputAction: TextInputAction.search,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  suffixIcon: searchController.text.isEmpty
                      ? Container(
                          width: 0,
                        )
                      : IconButton(
                          icon: Icon(Icons.close),
                          onPressed: () {
                            searchController.clear();
                          },
                        ),
                  border: InputBorder.none,
                  hintText: 'Insert book name...',
                  hintStyle: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                  ))),
          automaticallyImplyLeading: false,
          centerTitle: true,
        ),
        backgroundColor: resources.colors.light_primary);
  }
}
