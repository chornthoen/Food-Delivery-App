import 'package:foods/common/image_string.dart';

class ChatModel {
  final String imagePath;
  final String name;
  final String subtitle;
  final String? trailing;
  final String subtrailing;

  ChatModel({
    required this.imagePath,
    required this.name,
    required this.subtitle,
     this.trailing,
    required this.subtrailing,
  });
}

List<ChatModel> chatModel = [
  ChatModel(
    imagePath: tGuyImage,
    name: 'Guy Hawkins',
    subtitle: 'I\'ll be there in 2 mins',
    subtrailing: '20.00',
  ),
  ChatModel(
    imagePath: tDianneImage,
    name: 'Dianne Russell',
    subtitle: 'woohooo',
    subtrailing: '16.40',
  ),
  ChatModel(
    imagePath: tTheresaImage,
    name: 'Theresa Webb',
    subtitle: 'The Good Work',
    subtrailing: '13.00',
  ),
  ChatModel(
    imagePath: tJennyImage,
    name: 'Jenny Wilson',
    subtitle: 'I\'ll be there in 2 mins',
    subtrailing: '23.00',
  ),
  ChatModel(
    imagePath: tCourntneyImage,
    name: 'Guy Hawkins',
    subtitle: 'I\'ll be there in 2 mins',
    subtrailing: '20.00',
  ),
  ChatModel(
    imagePath: tDianneImage,
    name: 'Guy Hawkins',
    subtitle: 'I\'ll be there in 2 mins',
    subtrailing: '20.00',
  ),
  ChatModel(
    imagePath: tTheresaImage,
    name: 'Guy Hawkins',
    subtitle: 'I\'ll be there in 2 mins',
    subtrailing: '20.00',
  ),

];
