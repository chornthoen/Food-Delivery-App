import 'package:flutter/material.dart';
import 'package:foods/models/testimonials_model.dart';

import '../common/constants.dart';

class TestimonialCard extends StatelessWidget {
  const TestimonialCard({
    Key? key, required this.testimonialsModels,

  }) : super(key: key);
  final TestimonialsModel testimonialsModels;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      //height: 80,
      padding: const EdgeInsets.only(left: 10, top: 8, bottom: 8, right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(0, 15),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(testimonialsModels.imagePath),
            radius: 28,
          ),
          Container(
            padding: const EdgeInsets.only(left: 10),
            width: 210,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  testimonialsModels.name,
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                    color: neutral2Color,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  testimonialsModels.date,
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  testimonialsModels.subtitle,
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                    color: neutral2Color,
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: primaryColor),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.white,
                  size: 18,
                ),
                const SizedBox(
                  width: 3,
                ),
                Text(
                  testimonialsModels.rangStar,
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
