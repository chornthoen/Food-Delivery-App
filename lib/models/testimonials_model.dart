import 'package:foods/common/image_string.dart';

class TestimonialsModel {
  final String imagePath;
  final String name;
  final String date;
  final String subtitle;
  final String rangStar;

  TestimonialsModel({
    required this.imagePath,
    required this.name,
    required this.date,
    required this.subtitle,
    required this.rangStar,
  });
}

List<TestimonialsModel> testimonials = [
  TestimonialsModel(
    imagePath: tJennyImage,
    name: 'Jenny Wilson',
    date: 'December 20, 2021',
    subtitle:
        'The food is very delicious and the service is satisfying! Love it!',
    rangStar: '5',
  ),
  TestimonialsModel(
    imagePath: tCourntneyImage,
    name: 'Jerome Bell',
    date: 'December 20, 2021',
    subtitle:
    'omg, this is amazing',
    rangStar: '7',
  ),
  TestimonialsModel(
    imagePath: tEleanorImage,
    name: 'Jenny Wilson',
    date: 'December 20, 2021',
    subtitle:
    'The food is very delicious and the service is satisfying! Love it!',
    rangStar: '5',
  ),
  TestimonialsModel(
    imagePath: tDarrellImage,
    name: 'Jenny Wilson',
    date: 'December 20, 2021',
    subtitle:
    'Extraordinary! love it so much!',
    rangStar: '3',
  ),TestimonialsModel(
    imagePath: tGuyImage,
    name: 'Jenny Wilson',
    date: 'December 20, 2021',
    subtitle:
    'perfect!',
    rangStar: '9',
  ),
  TestimonialsModel(
    imagePath: tTheresaImage,
    name: 'Darrell Steward',
    date: 'December 20, 2021',
    subtitle:
    'Wow, this is really epic',
    rangStar: '5',
  ),
  TestimonialsModel(
    imagePath: tTheresaImage,
    name: 'Darrell Steward',
    date: 'December 20, 2021',
    subtitle:
    'Wow, this is really epic',
    rangStar: '5',
  ),


];
