import 'package:foods/common/image_string.dart';

class SeeAllMenuModel {
  final int price;
  final String title;
  final String subtitle;
  final String imagePath;

  SeeAllMenuModel({
    required this.price,
    required this.title,
    required this.subtitle,
    required this.imagePath,
  });
}

List<SeeAllMenuModel> seeAllMenus = [
  SeeAllMenuModel(
    price: 8,
    title: 'Original',
    subtitle: 'Lovy Food',
    imagePath: tGreenyImage,
  ),
  SeeAllMenuModel(
    price: 10,
    title: 'Fresh Salad',
    subtitle: 'Cloudy Recto',
    imagePath: tFreshSaladImage,
  ),
  SeeAllMenuModel(
    price: 8,
    title: 'Yummie Ice Cream',
    subtitle: 'Circlo Recto',
    imagePath: tYummieIceCreamImage,
  ),
  SeeAllMenuModel(
    price: 11,
    title: 'Vegan Special',
    subtitle: 'Haty Food',
    imagePath: tMediumImage,
  ),
  SeeAllMenuModel(
    price: 13,
    title: 'Mixed Pasta',
    subtitle: 'Recto Food',
    imagePath: tMixed1Image,
  ),
  SeeAllMenuModel(
    price: 13,
    title: 'Mixed Pasta',
    subtitle: 'Recto Food',
    imagePath: tMixedImage,
  ),
  SeeAllMenuModel(
    price: 11,
    title: 'Vegan Special',
    subtitle: 'Haty Food',
    imagePath: tMediumImage,
  ),
  SeeAllMenuModel(
    price: 8,
    title: 'Yummie Ice Cream',
    subtitle: 'Circlo Recto',
    imagePath: tYummieIceCreamImage,
  ),
];
