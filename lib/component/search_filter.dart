import 'package:flutter/material.dart';

import '../common/constants.dart';

class SearchAndFilterWidget extends StatelessWidget {
  const SearchAndFilterWidget({Key? key,  this.onTab}) : super(key: key);

  final VoidCallback? onTab;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0,right: 0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFFF4F6F9),
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.withOpacity(0.04),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      //enabled: false,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 16),
                        hintText: 'Search',
                        helperStyle:
                        Theme.of(context).textTheme.subtitle1!.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF09101D),
                        ),
                        suffixIcon: const Icon(Icons.search),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 15,),
          Container(
            decoration: BoxDecoration(
              color: Colors.redAccent.withOpacity(0.2),
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.blue.withOpacity(0.04),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(0, 1), // changes position of shadow
                ),
              ],
            ),
            child: IconButton(
              onPressed: onTab,
              splashRadius: 1,
              icon: const Icon(
                Icons.filter_list,
                color: primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}