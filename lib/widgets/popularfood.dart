import 'package:feedu/models/popularfoodmodel.dart';
import 'package:feedu/shared/theme.dart';
import 'package:flutter/material.dart';

class PopularFoodCard extends StatelessWidget {
  final PopularFoodModel popularfood;
  const PopularFoodCard(this.popularfood, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 20,
      ),
      padding: const EdgeInsets.only(
        top: 25,
        bottom: 10,
        left: 20,
        right: 0,
      ),
      width: 315,
      height: 120,
      decoration: BoxDecoration(
        color: fGreyBackgroundColor,
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              bottom: 15,
            ),
            child: Image.asset(
              popularfood.imageUrl,
              width: 68,
              height: 70,
            ),
          ),
          const SizedBox(
            width: 18,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                popularfood.name,
                style: blackTextStyle.copyWith(
                  fontSize: 15,
                  fontWeight: medium,
                ),
              ),
              Text(
                popularfood.description,
                style: greyTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: medium,
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Text(
                'IDR ${popularfood.price}',
                style: blackTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/details');
                },
                style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(
                      11,
                    ),
                    primary: fPrimaryColor,
                    fixedSize: const Size(36, 36)),
                child: Image.asset(
                  'assets/plus.png',
                  width: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
