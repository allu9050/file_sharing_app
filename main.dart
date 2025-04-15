import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

void main() => runApp(FileSharingApp());

class FileSharingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'File Sharing App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  Future<void> pickFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result != null) {
      print("File Selected: \${result.files.single.name}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('File Sharing App')),
      body: Center(
        child: ElevatedButton(
          onPressed: pickFile,
          child: Text('Pick a File'),
        ),
      ),
    );
  }
}
