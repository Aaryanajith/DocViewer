import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('DocScrapper'),
        centerTitle: true,
        // backgroundColor: Colors.transparent,
        backgroundColor: Color.fromARGB(255, 78, 76, 212),
        elevation: 20,
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 78, 76, 212),
        ),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Positioned(
              bottom: 50,
              child: Container(
                decoration: BoxDecoration(),
                width: 200,
                height: 50,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text(
                    'Pick file',
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () async {
                    // uploadFile();
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  // Future uploadFile() async {
  //   var dio = Dio();

  //   FilePickerResult? result = await FilePicker.platform.pickFiles();

  //   if (result != null) {
  //     // File file = File(result.files.single.path?? " ");

  //     String fileName = file.path.split('/').last;

  //     String path = file.path;

  //     FormData data = FormData.fromMap({
  //       "file": await MultipartFile.fromFile(path, filename: fileName),
  //     });

  //   }
  // }
}
