import 'package:flutter/material.dart';

class BookmarkFragment extends StatefulWidget {
  BookmarkFragment({Key? key}) : super(key: key);

  @override
  _BookmarkFragmentState createState() => _BookmarkFragmentState();
}

class _BookmarkFragmentState extends State<BookmarkFragment> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Bookmark', style: TextStyle(fontSize: 24),),
    );
  }
}