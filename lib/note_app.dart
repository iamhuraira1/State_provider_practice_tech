import 'package:flutter/material.dart';
import 'package:flutter_application_1/db_helper.dart';

class NoteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NoteApp"),
      ),
      body: Column(
        children: [
          Text("data"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
