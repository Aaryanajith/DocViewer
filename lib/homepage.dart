import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:file_picker/file_picker.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

    void pickFile() async {
    final result = await FilePicker.platform.pickFiles(allowMultiple: true);

    if (result == null) return;

    final file = result.files.first;

    openFile(file);
  }

      void openFile(PlatformFile file) {
    OpenFile.open(file.path);
  }

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('DocViewer'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 78, 76, 212),
        elevation: 20,
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 78, 76, 212),
        ),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Positioned(
                child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Center(
                child: Text(
                  'No file selected',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
            )),
            Positioned(
              bottom: 50,
              child: Container(
                width: 200,
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text(
                    'Pick file',
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    pickFile();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
