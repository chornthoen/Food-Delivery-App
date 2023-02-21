import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  const TextFieldInput(
      {Key? key,
      this.controller,
      this.icon,
      required this.hintText,
      this.obscureText = false, this.onPressed})
      : super(key: key);

  final TextEditingController? controller;
  final IconData? icon;
  final String hintText;
  final bool? obscureText;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 25,
            offset: Offset(1, 10),
          )
        ],
      ),
      // height: 60,

      child: TextField(
        controller: controller,
        obscureText: obscureText!,
        keyboardType: TextInputType.emailAddress,
        style: Theme.of(context).textTheme.subtitle1!.copyWith(
              color: const Color(0xFF09101D),
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
        decoration: InputDecoration(
          suffixIcon: IconButton(
            splashRadius: 15,
            onPressed: onPressed,
            icon: Icon(
              icon,
              color: Colors.grey,
            ),
          ),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.only(left: 24, top: 13),
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.subtitle1!.copyWith(
                color: const Color(0xFFDADEE3),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
        ),
      ),
    );
  }
}
