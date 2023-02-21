import 'package:flutter/material.dart';
import 'package:foods/common/constants.dart';
import 'package:foods/component/button_back_and_title.dart';

import '../component/testimonial_card.dart';
import '../models/testimonials_model.dart';

class TestimonialPage extends StatefulWidget {
  const TestimonialPage({Key? key}) : super(key: key);

  static const String routeName = "/testimonial_page";

  @override
  State<TestimonialPage> createState() => _TestimonialPageState();
}

class _TestimonialPageState extends State<TestimonialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ButtonBackAndTitle(
              title: 'Testimonial',
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Expanded(
              child: Stack(
                children: [
                  ListView.builder(
                    itemCount: testimonials.length,
                    itemBuilder: (context, index) => TestimonialCard(
                      //itemIndex: index,
                      testimonialsModels: testimonials[index],
                    ),
                  ),
                ],
              ),
            ),

            Stack(
              alignment: Alignment.topCenter,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
                    padding:const EdgeInsets.symmetric(vertical: 10),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                      border: Border.all(
                        color: primaryColor,
                        width: 2,
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.arrow_back_ios,
                          color: primaryColor,
                        ),
                        Text(
                          'Back',
                          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
