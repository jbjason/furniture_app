import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/constant/my_color.dart';
import 'package:furniture_app/constant/my_image.dart';
import 'package:furniture_app/widgets/home_widgets/home_navbar_painter.dart';

class HomeNavbar extends StatelessWidget {
  const HomeNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: CustomPaint(
        painter: HomeNavbarPainter(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(width: 1),
            IconButton(
              onPressed: () {},
              icon: const Icon(CupertinoIcons.square_split_2x2_fill,
                  color: Colors.white),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(CupertinoIcons.chat_bubble_fill,
                  color: MyColor.textColor),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(CupertinoIcons.location_solid,
                  color: MyColor.textColor),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(CupertinoIcons.person_fill,
                  color: MyColor.textColor),
            ),
            SizedBox(
              width: 70,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(top: -23, right: 21, child: _floatButton()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _floatButton() => FloatingActionButton(
        onPressed: () {},
        backgroundColor: MyColor.brownDark,
        child: Image.asset(
          MyImage.cartImg,
          width: 25,
          color: Colors.white,
          fit: BoxFit.contain,
        ),
      );
}
