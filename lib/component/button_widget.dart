import 'package:flutter/material.dart';
class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key, required this.text, this.onPressed,
  }) : super(key: key);
  final String text;
  final VoidCallback? onPressed;



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
