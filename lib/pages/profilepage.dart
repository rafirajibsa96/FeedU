import 'package:feedu/shared/theme.dart';
import 'package:feedu/widgets/bottom_navbar_item.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fWhiteColor,
      body: const Center(
        child: Text(
          'PROFILE PAGE',
        ),
      ),
      floatingActionButton: Container(
        width: MediaQuery.of(context).size.width - (2 * defaultMargin),
        height: 70,
        margin: const EdgeInsets.only(right: 15),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        decoration: BoxDecoration(
          color: fGreyBackgroundColor,
          borderRadius: BorderRadius.circular(
            28,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 99,
              height: 40,
              margin: const EdgeInsets.only(
                right: 34,
              ),
              decoration: BoxDecoration(
                color: fPrimaryColor,
                borderRadius: BorderRadius.circular(
                  20,
                ),
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/');
                    },
                    child: Container(
                      margin: const EdgeInsets.only(
                        left: 14,
                        top: 10,
                        bottom: 11,
                        right: 8,
                      ),
                      width: 20,
                      height: 19,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/home.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Home',
                    style: whiteTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: bold,
                    ),
                  ),
                ],
              ),
            ),
            const BottomNavbarItem(
                'assets/icon_notification.png', '/notification'),
            const BottomNavbarItem('assets/icon_favorite.png', '/favorite'),
            const BottomNavbarItem('assets/icon_user.png', '/profile'),
          ],
        ),
      ),
    );
  }
}
