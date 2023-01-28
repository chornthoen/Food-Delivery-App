import 'package:flutter/material.dart';

import '../common/constants.dart';

class ChipWidget extends StatelessWidget {
  const ChipWidget({
    Key? key, required this.text, this.onTap,
  }) : super(key: key);
  final String text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
            color: primaryColor,
            width: 2,
          ),
        ),
        padding: const EdgeInsets.only(top: 8,left: 15,right: 15,bottom: 8),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline5!.copyWith(
            color: primaryColor,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}