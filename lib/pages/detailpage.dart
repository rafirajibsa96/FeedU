import 'package:feedu/shared/theme.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fWhiteColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: defaultMargin,
                ),
                child: Row(
                  children: [
                    //NOTE: TOP BUTTON
                    Image.asset(
                      'assets/chevron_left.png',
                      width: 20,
                      height: 15,
                    ),
                    const Spacer(),
                    Image.asset(
                      'assets/dot.png',
                      width: 20,
                      height: 15,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              //NOTE: TITLE & SUBTITLE
              Text(
                'Steak House',
                style:
                    blackTextStyle.copyWith(fontSize: 30, fontWeight: semiBold),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                'Our very own! Smashed \nbeef burgers',
                style:
                    greyTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
              ),
              const SizedBox(
                height: 50,
              ),
              //NOTE : DETAIL IMAGE
              Image.asset(
                'assets/burgerdetail.png',
                width: 315,
              ),
              const SizedBox(
                height: 50,
              ),
              //NOTE : PICK SIZE SECTION
              Text(
                'Size :',
                style:
                    blackTextStyle.copyWith(fontSize: 14, fontWeight: medium),
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      right: 20,
                    ),
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: fPrimaryColor,
                      borderRadius: BorderRadius.circular(
                        50,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'S',
                        style: whiteTextStyle.copyWith(
                          fontSize: 24,
                          fontWeight: medium,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      right: 20,
                    ),
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: fGreyBackgroundColor,
                      borderRadius: BorderRadius.circular(
                        50,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'M',
                        style: blackTextStyle.copyWith(
                          fontSize: 24,
                          fontWeight: medium,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: fGreyBackgroundColor,
                      borderRadius: BorderRadius.circular(
                        50,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'L',
                        style: blackTextStyle.copyWith(
                          fontSize: 24,
                          fontWeight: medium,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              //NOTE: QUANTITY SECTION
              Text(
                'Quantity',
                style:
                    blackTextStyle.copyWith(fontSize: 14, fontWeight: medium),
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      color: fGreyBackgroundColor,
                      borderRadius: BorderRadius.circular(
                        50,
                      ),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/');
                      },
                      style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(
                            11,
                          ),
                          primary: fGreyBackgroundColor,
                          fixedSize: const Size(35, 35)),
                      child: Image.asset(
                        'assets/minus.png',
                        width: 14,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Text(
                    '2',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: semiBold,
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      color: fGreyBackgroundColor,
                      borderRadius: BorderRadius.circular(
                        50,
                      ),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/');
                      },
                      style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(
                            11,
                          ),
                          primary: fPrimaryColor,
                          fixedSize: const Size(35, 35)),
                      child: Image.asset(
                        'assets/plus.png',
                        width: 14,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              // NOTE: BOTTOM PRICE & BUTTON
              Padding(
                padding: EdgeInsets.only(
                  bottom: defaultMargin,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Price',
                          style: greyTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: medium,
                          ),
                        ),
                        const SizedBox(
                          height: 9,
                        ),
                        Text(
                          'IDR 49.999',
                          style: blackTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: semiBold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: fGreyBackgroundColor,
                            borderRadius: BorderRadius.circular(
                              50,
                            ),
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/');
                            },
                            style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                padding: const EdgeInsets.all(
                                  10,
                                ),
                                primary: fGreyBackgroundColor,
                                fixedSize: const Size(60, 60)),
                            child: Image.asset(
                              'assets/addfavorite.png',
                              width: 24,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: fGreyBackgroundColor,
                            borderRadius: BorderRadius.circular(
                              50,
                            ),
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/');
                            },
                            style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                padding: const EdgeInsets.all(
                                  10,
                                ),
                                primary: fPrimaryColor,
                                fixedSize: const Size(60, 60)),
                            child: Image.asset(
                              'assets/cart_white.png',
                              width: 24,
                            ),
                          ),
                        ),
                      ],
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
