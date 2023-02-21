import 'package:flutter/material.dart';
import 'package:foods/screen/menu_details_page.dart';
import '../component/button_back_and_title.dart';
import '../component/button_widget.dart';
import '../component/label_and_star.dart';
import '../component/text_field_input.dart';
import '../component/title_widget.dart';

class FillBioPage extends StatefulWidget {
  const FillBioPage({Key? key}) : super(key: key);
  static const String routeName = "/fill_bio";

  @override
  State<FillBioPage> createState() => _FillBioPageState();
}

class _FillBioPageState extends State<FillBioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ButtonBackAndTitle(
                title: "Fill in your bio",
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              const SizedBox(
                height: 20,
              ),
              const TitleName(
                title: 'This data will be displayed in your account profile for security',
              ),
              Padding(
                padding:const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const ContainerLabelWidget(
                      name: "Full Name",
                      star: "*",
                    ),
                    const TextFieldInput(
                      hintText: 'Full Name',
                    ),
                    const ContainerLabelWidget(
                      name: "Nick Name",
                      star: "*",
                    ),
                    const TextFieldInput(
                      hintText: 'Nick Name',
                    ),
                    const ContainerLabelWidget(
                      name: "Phone Number",
                      star: "*",
                    ),
                    const TextFieldInput(
                      hintText: 'Phone Number',
                    ),
                    const ContainerLabelWidget(
                      name: "Gender",
                      star: "*",
                    ),
                    const TextFieldInput(
                      hintText: 'Gender',
                    ),
                    const ContainerLabelWidget(
                      name: "Date of Birt",
                      star: "*",
                    ),
                    const TextFieldInput(
                      hintText: 'Date of Birt',
                    ),
                    const ContainerLabelWidget(
                      name: "Address",
                      star: "*",
                    ),
                    const TextFieldInput(
                      hintText: 'Address',
                    ),
                    const SizedBox(
                      height: 26,
                    ),
                    ButtonWidget(
                      text: 'Next',
                      onPressed: (){
                        Navigator.pushNamed(context, MenuDetailPage.routeName);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



