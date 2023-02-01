import 'package:flutter/material.dart';

import '../common/constants.dart';

class ButtonBackAngTitle extends StatelessWidget {
  const ButtonBackAngTitle({
    Key? key,  this.title, this.onTap,
  }) : super(key: key);
  final String? title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(left: 20,right: 20,top: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 36,
            width: 36,
            decoration: BoxDecoration(
              color: Colors.redAccent.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.only(left: 3, top: 0.9),
            child: IconButton(
              splashRadius: 15,
              onPressed: onTap,
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Color(0xFFF43F5E),
                size: 20,
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Text(
            title!,
            style: Theme
                .of(context)
                .textTheme
                .subtitle1!
                .copyWith(
              color: blackColor,
              fontSize: 26,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

