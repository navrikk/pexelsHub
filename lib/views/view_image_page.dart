import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:dio/dio.dart';
import 'package:permission_handler/permission_handler.dart';

class ViewImagePage extends StatefulWidget {
  final String imageUrl;
  ViewImagePage({
    @required
    this.imageUrl,
  });

  @override
  _ViewImagePageState createState() => _ViewImagePageState();
}

class _ViewImagePageState extends State<ViewImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Hero(
            tag: widget.imageUrl,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.network(
                widget.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    _save();
                  },
                  child: Stack(
                    children: <Widget>[
                      Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width / 2,
                        decoration: BoxDecoration(
                          color: Color(0xff1C1B1B).withOpacity(0.8),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width / 2,
                        padding: EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white54,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(
                            colors: [
                              Color(0x36FFFFFF),
                              Color(0x0FFFFFFF),
                            ]
                          ),
                        ),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Save image',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Stack(
                    children: <Widget>[
                      Container(
                        height: 35,
                        width: MediaQuery.of(context).size.width / 4,
                        decoration: BoxDecoration(
                          color: Color(0xff1C1B1B).withOpacity(0.8),
                          borderRadius: BorderRadius.circular(30)
                        ),
                      ),
                      Container(
                        height: 35,
                        width: MediaQuery.of(context).size.width / 4,
                        padding: EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white54,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(
                            colors: [
                              Color(0x36FFFFFF),
                              Color(0x0FFFFFFF),
                            ]
                          ),
                        ),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Cancel',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _save() async {
    if (Platform.isAndroid) {
      await _askPermission();
    }
    var response = await Dio().get(widget.imageUrl,
        options: Options(responseType: ResponseType.bytes));
    await ImageGallerySaver.saveImage(Uint8List.fromList(response.data));
    Fluttertoast.showToast(
      msg: 'Done',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.black,
      textColor: Colors.white,
      timeInSecForIosWeb: 1,
    );
    Navigator.pop(context);
  }

  _askPermission() async {
    await Permission.storage.request();
  }
}
