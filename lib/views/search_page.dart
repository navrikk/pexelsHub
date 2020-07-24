import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pexelsHub/data/data.dart';
import 'package:pexelsHub/models/wallpaper.dart';
import 'package:pexelsHub/widgets/app_logo.dart';
import 'package:http/http.dart' as http;
import 'package:pexelsHub/widgets/wallpapers_list.dart';

class SearchPage extends StatefulWidget {
  final String query;
  SearchPage({
    this.query,
  });

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController searchTextController = new TextEditingController();
  List<Wallpaper> wallpapers = new List();

  getSearchedWallpapers(String query) async {
    var response = await http.get(
      'https://api.pexels.com/v1/search?query=$query?per_page=16&page=1',
      headers: {
        'Authorization': apiKey
      }
    );
    Map<String, dynamic> data = jsonDecode(response.body);
    data['photos'].forEach((photo) {
      Wallpaper wallpaper = Wallpaper.fromMap(photo);
      wallpapers.add(wallpaper);
    });

    setState(() {});
  }

  @override
  void initState() {
    getSearchedWallpapers(widget.query);
    super.initState();
    searchTextController.text = widget.query;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appLogo(),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              SizedBox(height: 16),
              wallpapersList(
                wallpapers: wallpapers,
                context: context
              ),
            ],
          ),
        ),
      ),
    );
  }
}
