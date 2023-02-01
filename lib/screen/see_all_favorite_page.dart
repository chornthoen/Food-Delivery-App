import 'package:flutter/material.dart';
import 'package:foods/component/button_and_title.dart';
import '../common/constants.dart';
import '../component/favorite_card.dart';
import '../models/favorite_model.dart';

class SeeAllFavoritePage extends StatefulWidget {
  const SeeAllFavoritePage({Key? key}) : super(key: key);
  static const String routeName = "/see_all_favorite";

  @override
  State<SeeAllFavoritePage> createState() => _SeeAllFavoritePageState();
}

class _SeeAllFavoritePageState extends State<SeeAllFavoritePage> {
  List<FavoriteModel> displayList = List.from(favoriteModel);

  void updateList(String value) {
    setState(() {
      displayList = favoriteModel
          .where((element) =>
              element.title!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ButtonBackAngTitle(
              title: "Favorite",
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
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
                            offset: const Offset(
                                0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              onChanged: (value) {
                                updateList(value);
                              },
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 18, vertical: 16),
                                hintText: 'Search',
                                helperStyle: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(
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
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.redAccent.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.withOpacity(0.04),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset:
                              const Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: IconButton(
                      onPressed: () {
                        print('Filter');
                      },
                      splashRadius: 1,
                      icon: const Icon(
                        Icons.filter_list,
                        color: primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //const SearchAndFilterWidget(),
            Expanded(
              child: Stack(
                children: [
                  displayList.isEmpty
                      ? Center(
                          child: Text(
                            'Now you have no favorite',
                            style:
                                Theme.of(context).textTheme.subtitle1!.copyWith(
                                      color: blackColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                          ),
                        )
                      : ListView.builder(
                          itemCount: displayList.length,
                          itemBuilder: (context, index) => FavoriteCard(
                            itemIndex: index,
                            favoriteM: displayList[index],
                          ),
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
