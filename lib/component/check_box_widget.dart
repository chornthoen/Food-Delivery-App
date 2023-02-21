
import 'package:flutter/material.dart';

import '../common/constants.dart';

class CheckBoxWidget extends StatelessWidget {
  const CheckBoxWidget(
      {Key? key, required this.value, this.onChanged, required this.text})
      : super(key: key);
  final bool value;
  final Function? onChanged;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 8,
      ),
      height: 16,
      child: Row(
        children: [
          Theme(
            data: ThemeData(unselectedWidgetColor: primaryColor),
            child: Checkbox(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              value: value,
              checkColor: Colors.white,
              activeColor: primaryColor,
              onChanged: (value) {
                onChanged!(value);
              },
            ),
          ),
          Text(
            text,
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: neutral1Color,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ],
      ),
    );
  }
}
