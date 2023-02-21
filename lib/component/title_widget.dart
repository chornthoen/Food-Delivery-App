import 'package:flutter/material.dart';
import '../common/constants.dart';

class TitleName extends StatelessWidget {
  const TitleName({
    Key? key, required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        title,
        style: Theme.of(context).textTheme.subtitle1!.copyWith(
          fontSize: 14,
          color: blackColor,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}