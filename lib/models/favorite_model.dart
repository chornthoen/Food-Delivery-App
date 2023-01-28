
import '../common/image_string.dart';

class ProductF {
  final int price;
  final String title;
  final String subtitle;
  final String imagePath;

  ProductF({
    required this.price,
    required this.title,
    required this.subtitle,
    required this.imagePath,
  });
}

List<ProductF> product1 = [
  ProductF(
    price: 8,
    title: 'Original',
    subtitle: 'Lovy Food',
    imagePath: tGreenyImage,
  ),
  ProductF(
    price: 10,
    title: 'Fresh Salad',
    subtitle: 'Cloudy Recto',
    imagePath: tFreshSaladImage,
  ),
  ProductF(
    price: 8,
    title: 'Yummie Ice Cream',
    subtitle: 'Circlo Recto',
    imagePath: tYummieIceCreamImage,
  ),
  ProductF(
    price: 11,
    title: 'Vegan Special',
    subtitle: 'Haty Food',
    imagePath: tMediumImage,
  ),
  ProductF(
    price: 13,
    title: 'Mixed Pasta',
    subtitle: 'Recto Food',
    imagePath: tMixed1Image,
  ),
  ProductF(
    price: 13,
    title: 'Mixed Pasta',
    subtitle: 'Recto Food',
    imagePath: tMixedImage,
  ),
  ProductF(
    price: 11,
    title: 'Vegan Special',
    subtitle: 'Haty Food',
    imagePath: tMediumImage,
  ),
  ProductF(
    price: 8,
    title: 'Yummie Ice Cream',
    subtitle: 'Circlo Recto',
    imagePath: tYummieIceCreamImage,
  ),
];
