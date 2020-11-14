import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:pexelsHub/models/category.dart';

final String apiKey = DotEnv().env['PEXELS_API_KEY'];
final String streetArtImageUrl = "https://images.pexels"
    ".com/photos/545008/pexels-photo-545008.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500";
final String wildlifeImageUrl = "https://images.pexels"
    ".com/photos/704320/pexels-photo-704320.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500";
final String natureImageUrl =
    "https://images.pexels.com/photos/34950/pexels-photo.jpg?auto=compress&cs=tinysrgb&dpr=2&w=500";
final String cityImageUrl =
    "https://images.pexels.com/photos/466685/pexels-photo-466685.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500";
final String motivationImageUrl =
    "https://images.pexels.com/photos/1434819/pexels-photo-1434819.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260";
final String bikesImageUrl =
    "https://images.pexels.com/photos/2116475/pexels-photo-2116475.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500";
final String carsImageUrl =
    "https://images.pexels.com/photos/1149137/pexels-photo-1149137.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500";

List<Category> getCategories() {
  List<Category> categories = new List();
  Category category = new Category();

  category.imageUrl = streetArtImageUrl;
  category.name = "Street Art";
  categories.add(category);
  category = new Category();

  category.imageUrl = wildlifeImageUrl;
  category.name = "Wild Life";
  categories.add(category);
  category = new Category();

  category.imageUrl = natureImageUrl;
  category.name = "Nature";
  categories.add(category);
  category = new Category();

  category.imageUrl = cityImageUrl;
  category.name = "City";
  categories.add(category);
  category = new Category();

  category.imageUrl = motivationImageUrl;
  category.name = "Motivation";
  categories.add(category);
  category = new Category();

  category.imageUrl = bikesImageUrl;
  category.name = "Bikes";
  categories.add(category);
  category = new Category();

  category.imageUrl = carsImageUrl;
  category.name = "Cars";
  categories.add(category);
  category = new Category();

  return categories;
}
