import 'package:flutter/material.dart';

class BottomNavbarItem extends StatelessWidget {
  final String imageurl;
  final String route;
  const BottomNavbarItem(this.imageurl, this.route, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, route);
          },
          child: Image.asset(
            imageurl,
            width: 24,
            height: 24,
          ),
        ),
      ],
    );
  }
}
