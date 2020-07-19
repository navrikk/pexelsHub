import 'package:pexelsHub/model/categories.dart';

List<Category> getCategories() {
  List<Category> categories = new List();
  Category category = new Category();

  //
  category.imageUrl =
      "https://images.pexels.com/photos/545008/pexels-photo-545008.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500";
  category.name = "Street Art";
  categories.add(category);
  category = new Category();

  //
  category.imageUrl =
      "https://images.pexels.com/photos/704320/pexels-photo-704320.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500";
  category.name = "Wild Life";
  categories.add(category);
  category = new Category();

  //
  category.imageUrl =
      "https://images.pexels.com/photos/34950/pexels-photo.jpg?auto=compress&cs=tinysrgb&dpr=2&w=500";
  category.name = "Nature";
  categories.add(category);
  category = new Category();

  //
  category.imageUrl =
      "https://images.pexels.com/photos/466685/pexels-photo-466685.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500";
  category.name = "City";
  categories.add(category);
  category = new Category();

  //
  category.imageUrl =
      "https://images.pexels.com/photos/1434819/pexels-photo-1434819.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260";
  category.name = "Motivation";

  categories.add(category);
  category = new Category();

  //
  category.imageUrl =
      "https://images.pexels.com/photos/2116475/pexels-photo-2116475.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500";
  category.name = "Bikes";
  categories.add(category);
  category = new Category();

  //
  category.imageUrl =
      "https://images.pexels.com/photos/1149137/pexels-photo-1149137.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500";
  category.name = "Cars";
  categories.add(category);
  category = new Category();

  return categories;
}
