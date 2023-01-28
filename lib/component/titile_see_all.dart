import 'package:flutter/material.dart';
class TitleSectionWidget extends StatelessWidget {
  const TitleSectionWidget({
    Key? key,
    required this.leadingText,
    required this.trailingText,
    this.onTap,
  }) : super(key: key);

  final String leadingText;
  final String trailingText;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leadingText,
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
          TextButton(
            //clipBehavior: Clip.none,
            onPressed: onTap,
            child: Text(
              trailingText,
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: const Color(0xFFF43F5E),
              ),
            ),
          ),
        ],
      ),
    );
  }
}