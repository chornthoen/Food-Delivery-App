import '../common/image_string.dart';

class Product {
  final String imagePath;
  final String title;
  final String subtitle;

  const Product(
      {required this.title, required this.subtitle, required this.imagePath});
}

List<Product> products =  [
  Product(
    title: 'Lovy Food',
    subtitle: '10 min',
    imagePath: tLovyFoodImage,
  ),
  Product(
    title: 'Cloudy Food',
    subtitle: '14 min',
    imagePath: tCloudyRestoImage,
  ),
  Product(
    title: 'Circlo Resto',
    subtitle: '11 min',
    imagePath: tCircloRestoImage,
  ),
  Product(
    title: 'Haty Food',
    subtitle: '16 min',
    imagePath: tHatyFoodImage,
  ),
  Product(
    title: 'Hearthy Resto',
    subtitle: '18 min',
    imagePath: tHearthyRestoImage,
  ),
  Product(
    title: 'Recto Food',
    subtitle: '15 min',
    imagePath: tRectoFoodImage,
  ),
  Product(
    title: 'Hearthy Resto',
    subtitle: '18 min',
    imagePath: tHearthyRestoImage,
  ),
  Product(
    title: 'Recto Food',
    subtitle: '15 min',
    imagePath: tRectoFoodImage,
  ),
];
