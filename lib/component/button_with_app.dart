import 'package:flutter/material.dart';
class ButtonWithApp extends StatelessWidget {
  const ButtonWithApp(
      {Key? key, required this.imagePath, required this.name, this.onPressed})
      : super(key: key);

  final String imagePath;
  final String name;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 45,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 26,
            offset: Offset(1, 15),
          )
        ],
      ),
      child: OutlinedButton.icon(
        onPressed:onPressed,
        icon:  Image(
          image: AssetImage(imagePath),
          width: 25,
          height: 20,
        ),
        label: Text(
          name,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                color: const Color(0xFF09051C),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
        ),
        style: OutlinedButton.styleFrom(
          side: const BorderSide(
            color: Color(0xFFF4F6F9),
          ),
          backgroundColor: Colors.white,
          shadowColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
