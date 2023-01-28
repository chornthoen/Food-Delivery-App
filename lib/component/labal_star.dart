import 'package:flutter/material.dart';

import '../common/constants.dart';
class ContainerLabaleWiget extends StatelessWidget {
  const ContainerLabaleWiget({
    Key? key, required this.name, required this.star,
  }) : super(key: key);
  final String name;
  final String star;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      alignment: Alignment.topLeft,
      child: Row(
        children: [
          Text(
            name,
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
              color: neutral1Color,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
           Text(
            star,
            style: const TextStyle(
                color: Color(0xFFDA1414),
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
