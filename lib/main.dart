import 'package:flutter/material.dart';

void main() => runApp(FileSharingApp());

class FileSharingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'File Sharing App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('File Sharing App'),
        ),
        body: Center(
          child: Text('Hello from Android Phone!'),
        ),
      ),
    );
  }
}
