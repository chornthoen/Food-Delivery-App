import 'package:foods/common/image_string.dart';

class OrderHistoryModel {
  final String name;
  final String img;
  final String subtitle;
  final String price;
  final String status;

  OrderHistoryModel({
    required this.name,
    required this.img,
    required this.subtitle,
    required this.price,
    required this.status,
  });

}
List<OrderHistoryModel> orderHistoryModels = [
  OrderHistoryModel(
    name: 'Greeny Salad',
    img: tGreenyImage,
    subtitle: 'Lovy Food',
    price: '12',
    status: 'Process',
  ),
  OrderHistoryModel(
    name: 'Medium Salad',
    img: tMediumImage,
    subtitle: 'Circle Food',
    price: '12',
    status: 'Process',
  ),
  OrderHistoryModel(
    name: 'Fresh Salad',
    img: tFreshSaladImage,
    subtitle: 'Lovy Food',
    price: '17',
    status: 'Completed',
  ),
  OrderHistoryModel(
    name: 'Original Salad',
    img: tGreenyImage,
    subtitle: 'Lovy Food',
    price: '12',
    status: 'Process',
  ),
  OrderHistoryModel(
    name: 'Greeny Salad',
    img: tOriginalSaladImage,
    subtitle: 'Lovy Food',
    price: '12',
    status: 'Cancelled',
  ),
  OrderHistoryModel(
    name: 'Greeny Salad',
    img: tGreenyImage,
    subtitle: 'Lovy Food',
    price: '12',
    status: 'Process',
  ),
  OrderHistoryModel(
    name: 'Greeny Salad',
    img: tGreenyImage,
    subtitle: 'Lovy Food',
    price: '12',
    status: 'Process',
  ),
  OrderHistoryModel(
    name: 'Greeny Salad',
    img: tGreenyImage,
    subtitle: 'Lovy Food',
    price: '12',
    status: 'Process',
  ),
  OrderHistoryModel(
    name: 'Greeny Salad',
    img: tGreenyImage,
    subtitle: 'Lovy Food',
    price: '12',
    status: 'Process',
  ),


];
