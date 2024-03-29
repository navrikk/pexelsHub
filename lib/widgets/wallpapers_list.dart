import 'package:flutter/material.dart';
import 'package:pexelsHub/models/wallpaper.dart';
import 'package:pexelsHub/views/view_image_page.dart';

Widget wallpapersList({List<Wallpaper> wallpapers, context}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: GridView.count(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      crossAxisCount: 2,
      childAspectRatio: 0.6,
      mainAxisSpacing: 6.0,
      crossAxisSpacing: 6.0,
      children: wallpapers.map((wallpaper) {
        return GridTile(
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ViewImagePage(
                    imageUrl: wallpaper.source.portrait,
                  ),
                ),
              );
            },
            child: Hero(
              tag: wallpaper.source.portrait,
              child: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    wallpaper.source.portrait,
                    fit: BoxFit.cover,
                  ),
                )
              ),
            ),
          ),
        );
      }).toList(),
    ),
  );
}
