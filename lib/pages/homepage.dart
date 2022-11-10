import 'package:feedu/models/popularfoodmodel.dart';
import 'package:feedu/shared/theme.dart';
import 'package:feedu/widgets/popularfood.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fWhiteColor,
      bottomNavigationBar: Container(
        color: Colors.transparent,
        child: Theme(
          data: ThemeData(backgroundColor: Colors.green),
          child: Container(
            margin: EdgeInsets.fromLTRB(30, 0, 30, 30),
            height: 70,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: BottomNavigationBar(
                elevation: 0,
                // backgroundColor: fGreyBackgroundColor,
                backgroundColor: Colors.red,
                items: [
                  BottomNavigationBarItem(icon: Icon(Icons.abc), label: ''),
                  BottomNavigationBarItem(icon: Icon(Icons.abc), label: ''),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(
            left: defaultMargin,
            right: defaultMargin,
          ),
          child: ListView(
            children: [
              Row(
                children: [
                  //NOTE: TOP BUTTON
                  Image.asset(
                    'assets/bar.png',
                    width: 20,
                    height: 15,
                  ),
                  const Spacer(),
                  Image.asset(
                    'assets/cart_black.png',
                    width: 20,
                    height: 15,
                  ),
                ],
              ),
              const SizedBox(
                height: 21,
              ),
              //NOTE: SEARCH BAR
              TextFormField(
                cursorColor: fPrimaryColor,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: fGreyBackgroundColor,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(
                      top: 13,
                      bottom: 13,
                      left: 16,
                      right: 16,
                    ),
                    child: Image.asset(
                      'assets/icon_search.png',
                      width: 22,
                      height: 22,
                    ),
                  ),
                  hintText: 'Search your favorite food',
                  hintStyle: greyTextStyle.copyWith(
                    fontSize: 16,
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 16,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      defaultRadius,
                    ),
                    borderSide: BorderSide(
                      color: fGreyBackgroundColor,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      defaultRadius,
                    ),
                    borderSide: BorderSide(
                      color: fGreyBackgroundColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              //NOTE : TAB MENUS
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Fast Food',
                        style: primaryTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: semiBold,
                        ),
                      ),
                      Container(
                        width: 20,
                        height: 2,
                        decoration: BoxDecoration(
                          color: fPrimaryColor,
                          borderRadius: BorderRadius.circular(
                            1,
                          ),
                        ),
                      )
                    ],
                  ),
                  Text(
                    'Desert',
                    style: greyTextStyle.copyWith(
                        fontSize: 16, fontWeight: semiBold),
                  ),
                  Text(
                    'Drinks',
                    style: greyTextStyle.copyWith(
                        fontSize: 16, fontWeight: semiBold),
                  ),
                  Text(
                    'Snacks',
                    style: greyTextStyle.copyWith(
                        fontSize: 16, fontWeight: semiBold),
                  ),
                ],
              ),
              const SizedBox(
                height: 29,
              ),
              //NOTE: POPULAR FOOD
              Text(
                'Popular Food',
                style:
                    blackTextStyle.copyWith(fontSize: 30, fontWeight: semiBold),
              ),
              const SizedBox(
                height: 18,
              ),
              PopularFoodCard(
                PopularFoodModel(
                  id: 1,
                  name: 'Pizza',
                  description: 'Delicious Food 2022',
                  imageUrl: 'assets/pizza.png',
                  price: 49.999,
                ),
              ),
              PopularFoodCard(
                PopularFoodModel(
                  id: 1,
                  name: 'Hamburger',
                  description: 'Delicious Food 2022',
                  imageUrl: 'assets/burger.png',
                  price: 59.999,
                ),
              ),
              PopularFoodCard(
                PopularFoodModel(
                  id: 1,
                  name: 'Double Hot Dog',
                  description: 'Delicious Food 2022',
                  imageUrl: 'assets/hotdog.png',
                  price: 34.999,
                ),
              ),
              PopularFoodCard(
                PopularFoodModel(
                  id: 1,
                  name: 'Double Hot Dog',
                  description: 'Delicious Food 2022',
                  imageUrl: 'assets/hotdog.png',
                  price: 34.999,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
