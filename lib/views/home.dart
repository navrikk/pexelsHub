import 'package:flutter/material.dart';
import 'package:pexelsHub/data/data.dart';
import 'package:pexelsHub/model/categories.dart';
import 'package:pexelsHub/widgets/app_name_widget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Category> categories = new List();

  @override
  void initState() {
    categories = getCategories();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: appNameWidget(),
        elevation: 0.0,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Color(0xfff5f8fd),
                borderRadius: BorderRadius.circular(30),
              ),
              margin: EdgeInsets.symmetric(horizontal: 24),
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'search wallpapers',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Icon(Icons.search),
                ],
              ),
            ),
            SizedBox(height: 16),
            Container(
              height: 80,
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: ListView.builder(
                itemCount: categories.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CategoryTile(
                    title: categories[index].name,
                    imageUrl: categories[index].imageUrl,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  final String imageUrl;
  final String title;

  CategoryTile({
    @required
    this.imageUrl,
    @required
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 4),
      child: Stack(
        children: <Widget>[
          ClipRRect(
            child: Image.network(
              imageUrl,
              height: 50,
              width: 100,
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          Container(
            color: Colors.black26,
            height: 50,
            width: 100,
            alignment: Alignment.center,
            child: Text(
              title, 
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          )
        ],
      ),
    );
  }
}
