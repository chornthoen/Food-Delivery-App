
import '../common/image_string.dart';

class FavoriteModel {
  final int price;
  final String title;
  final String subtitle;
  final String imagePath;

  FavoriteModel({
    required this.price,
    required this.title,
    required this.subtitle,
    required this.imagePath,
  });
}

List<FavoriteModel> favoriteModel = [
  FavoriteModel(
    price: 8,
    title: 'Original',
    subtitle: 'Lovy Food',
    imagePath: tGreenyImage,
  ),
  FavoriteModel(
    price: 10,
    title: 'Fresh Salad',
    subtitle: 'Cloudy Recto',
    imagePath: tFreshSaladImage,
  ),
  FavoriteModel(
    price: 8,
    title: 'Yummie Ice Cream',
    subtitle: 'Circlo Recto',
    imagePath: tYummieIceCreamImage,
  ),
  FavoriteModel(
    price: 11,
    title: 'Vegan Special',
    subtitle: 'Haty Food',
    imagePath: tMediumImage,
  ),
  FavoriteModel(
    price: 13,
    title: 'Mixed Pasta',
    subtitle: 'Recto Food',
    imagePath: tMixed1Image,
  ),
  FavoriteModel(
    price: 13,
    title: 'Mixed Pasta',
    subtitle: 'Recto Food',
    imagePath: tMixedImage,
  ),
  FavoriteModel(
    price: 11,
    title: 'Vegan Special',
    subtitle: 'Haty Food',
    imagePath: tMediumImage,
  ),
  FavoriteModel(
    price: 8,
    title: 'Yummie Ice Cream',
    subtitle: 'Circlo Recto',
    imagePath: tYummieIceCreamImage,
  ),
];
