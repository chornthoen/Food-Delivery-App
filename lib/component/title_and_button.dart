import 'package:flutter/material.dart';

class TitleAndButton extends StatelessWidget {
  const TitleAndButton(
      {Key? key,
      required this.text,
      required this.onPressed,
      required this.buttonText})
      : super(key: key);

  final String text;
  final String buttonText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.headline5!.copyWith(
                color:const Color(0xFF858C94),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            buttonText,
            style: Theme.of(context).textTheme.headline5!.copyWith(
                  color: const Color(0xFFF43F5E),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
          ),
        )
      ],
    );
  }
}
