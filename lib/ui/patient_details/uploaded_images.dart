import 'dart:io';
import 'package:YOURDRS_FlutterAPP/common/app_colors.dart';
import 'package:YOURDRS_FlutterAPP/common/app_log_helper.dart';
import 'package:YOURDRS_FlutterAPP/data/model/image.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UploadedImages extends StatefulWidget {



  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return UploadedImagesState();
  }
}

class UploadedImagesState extends State {
  bool isLoadingPath = false;
  final dir=getExternalStorageDirectory();
  int gIndex;
  List<ViewImage> images=ViewImage.allImages();
  FilePicker filePicker;
  String directory;
  List file = new List();
  _getSDCardDirectory() async {
    Directory directory = await getExternalStorageDirectory();
    print(directory.path);
    await directory.list().toList().then((filesList) => print(filesList));
    print(directory.parent.path.characters);
  }
  void _listofFiles() async {
    directory = (await getApplicationDocumentsDirectory()).path;
    setState(() {
      file = Directory("$directory/YourDrsImages/").listSync();
      print("files"+directory);//use your folder name insted of resume.
    });
  }
  @override
  void initState() {
    // _getSDCardDirectory();
    // _listofFiles();
  //  List items=FilePicker.getDirectoryPath() as List;
   // print(items);
    super.initState();

  }

  static Future<String> getDirectoryPath() async {

 //   Log.e("pathsdfsdf",FilePicker.getDirectoryPath());
    return getDirectoryPath();
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
        appBar: AppBar(
          title: Text("Uploaded images"),
        ),
        body: Container(
            child: ListView(children: [
          Container(
            margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
            height: 150,
            decoration: BoxDecoration(
              border: Border.all(
                color: CustomizedColors.homeSubtitleColor,
              ),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(0),
                  bottomLeft: Radius.circular(10),
                  topLeft: Radius.circular(10),
                  bottomRight: Radius.zero),
            ),
            child: Builder(

                builder: (BuildContext context) => isLoadingPath
                    ? Padding(
                        padding: const EdgeInsets.only(bottom: 5.0),
                        child: const CircularProgressIndicator())
                    : ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: images.length,
                        itemBuilder: (context,index) {
                          return GestureDetector(
                            child: Container(
                              margin: const EdgeInsets.all(10.0),
                              height: 130,
                              width: 150,
                              color: CustomizedColors.homeSubtitleColor,
                              child: Stack(
                                children:[ Image.network(
                                  '${images[index].image_name}',
                                  fit: BoxFit.contain,
                                ),
                             ] ),
                            ),
                            onTap: () {
                              setState(() {
                                gIndex=index;
                                print(gIndex);
                              });

                              Log.e("images", images[index].image_name);
                              print(index);
                            },
                          );
                        },
                      )),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin:
                const EdgeInsets.only(left: 0.0, top: 30, right: 0, bottom: 0),
            child: Image.network('${images[gIndex==null?0:gIndex].image_name}'),
          )
        ])));
  }

}

