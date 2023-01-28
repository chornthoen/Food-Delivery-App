import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class Otp extends StatelessWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: Container(
        padding: const EdgeInsets.only(
          top: 18,
          left: 15,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          border: Border.all(
            color: const Color(0xFFEBEEF2),
            width: 1,
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 20,
              offset: Offset(0, 10),
            ),
          ],
        ),
        child: TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            hintText: "0",
            border: InputBorder.none,
            hintStyle: Theme.of(context).textTheme.subtitle1!.copyWith(
              color: const Color(0xFFDADEE3),
              fontSize: 29,
              fontWeight: FontWeight.w600,
            ),
          ),
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
            color: const Color(0xFF09101D),
            fontSize: 29,
            fontWeight: FontWeight.w600,
          ),
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly,
          ],
          onChanged: (value) {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0) {
              FocusScope.of(context).previousFocus();
            }
          },
        ),
      ),
    );
  }
}
