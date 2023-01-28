import 'package:foods/common/image_string.dart';

class Product {
  final int price;
  final String title;
  final String subtitle;
  final String imagePath;

  Product({
    required this.price,
    required this.title,
    required this.subtitle,
    required this.imagePath,
  });
}

List<Product> product = [
  Product(
    price: 8,
    title: 'Original',
    subtitle: 'Lovy Food',
    imagePath: tGreenyImage,
  ),
  Product(
    price: 10,
    title: 'Fresh Salad',
    subtitle: 'Cloudy Recto',
    imagePath: tFreshSaladImage,
  ),
  Product(
    price: 8,
    title: 'Yummie Ice Cream',
    subtitle: 'Circlo Recto',
    imagePath: tYummieIceCreamImage,
  ),
  Product(
    price: 11,
    title: 'Vegan Special',
    subtitle: 'Haty Food',
    imagePath: tMediumImage,
  ),
  Product(
    price: 13,
    title: 'Mixed Pasta',
    subtitle: 'Recto Food',
    imagePath: tMixed1Image,
  ),
  Product(
    price: 13,
    title: 'Mixed Pasta',
    subtitle: 'Recto Food',
    imagePath: tMixedImage,
  ),
  Product(
    price: 11,
    title: 'Vegan Special',
    subtitle: 'Haty Food',
    imagePath: tMediumImage,
  ),
  Product(
    price: 8,
    title: 'Yummie Ice Cream',
    subtitle: 'Circlo Recto',
    imagePath: tYummieIceCreamImage,
  ),
];
