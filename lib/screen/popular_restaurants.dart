// import 'package:flutter/material.dart';
// import 'package:foods/models/product.dart';
//
// import '../common/image_string.dart';
//
// class PopularRestaurant extends StatefulWidget {
//   const PopularRestaurant({Key? key}) : super(key: key);
//   static const String routeName = '/p_r';
//
//   @override
//   State<PopularRestaurant> createState() => _PopularRestaurantState();
// }
//
// class _PopularRestaurantState extends State<PopularRestaurant> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GridView(
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           mainAxisSpacing: 10,
//           crossAxisSpacing: 10,
//         ),
//         children: GetProduct.map((r) => RestaurantItemCard(
//               title: r.title,
//               subtitle: r.subtitle,
//               imagePath: r.imagePath,
//             )).toList(),
//       ),
//     );
//   }
// }
//
// class RestaurantItemCard extends StatelessWidget {
//   const RestaurantItemCard({
//     Key? key,
//     required this.title,
//     required this.subtitle,
//     required this.imagePath,
//   }) : super(key: key);
//
//   //final int? index;
//   final String title;
//   final String subtitle;
//   final String imagePath;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(20),
//       height: 180,
//       width: 160,
//       margin: const EdgeInsets.only(
//         right: 16,
//         bottom: 16,
//         //left: index == 0 ? 16 : 0,
//       ),
//       decoration: BoxDecoration(
//         color: const Color(0xFFFFFFFF),
//         borderRadius: BorderRadius.circular(16),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.blue.withOpacity(0.05),
//             spreadRadius: 1,
//             blurRadius: 10,
//             offset: const Offset(0, 10),
//           ),
//         ],
//       ),
//       alignment: Alignment.center,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           SizedBox(
//             height: 80,
//             width: 80,
//             child: Image.asset(imagePath),
//           ),
//           const SizedBox(height: 10),
//           Text(
//             title,
//             style: Theme.of(context).textTheme.subtitle1!.copyWith(
//                   fontWeight: FontWeight.w600,
//                   fontSize: 18,
//                 ),
//           ),
//           const SizedBox(height: 5),
//           Text(
//             subtitle,
//             style: Theme.of(context).textTheme.subtitle2!.copyWith(
//                 fontWeight: FontWeight.w400,
//                 fontSize: 14,
//                 color: const Color(0xFF6D7580)),
//           ),
//         ],
//       ),
//     );
//   }
// }
