import 'dart:ui';
import 'package:furniture_app/constant/my_color.dart';
import 'package:furniture_app/constant/my_image.dart';
import 'package:furniture_app/models/furniture.dart';

abstract class MyConstant {
  static const String detail =
      'Computer programming is the process of performing a particular computation (or more generally, accomplishing a specific computing result), usually by designing and building an executable computer program.';

  static const List<Color> colors = [
    Color(0xFFFFCC80),
    MyColor.brownDark,
    MyColor.orangeLight,
    Color(0xFFFFA726)
  ];

  static const List<Furniture> furnitures = [
    Furniture(
      title: 'Chrome Lamp',
      details:
          'The User-friendly front operation panel and remote and control system.$detail',
      img: [
        MyImage.lamp0Img,
        MyImage.lamp1Img,
        MyImage.lamp2Img,
        MyImage.lamp3Img
      ],
      colors: colors,
      price: '\$ 18.90',
    ),
    Furniture(
      title: 'Bend Chair',
      details:
          'The User-friendly front operation panel and remote and control system.detail',
      img: [
        MyImage.chair0Img,
        MyImage.chair1Img,
        MyImage.chair2Img,
        MyImage.chair3Img
      ],
      colors: colors,
      price: '\$ 26.00',
    ),
    Furniture(
      title: 'Alarm Clock',
      details: detail,
      img: [
        MyImage.alarm0Img,
        MyImage.alarm1Img,
        MyImage.alarm2Img,
        MyImage.alarm3Img
      ],
      colors: colors,
      price: '\$ 26.00',
    ),
    Furniture(
      title: 'Oscillating Fan',
      details:
          'The User-friendly front operation panel and remote and control system.detail',
      img: [MyImage.fan0Img, MyImage.fan1Img, MyImage.fan2Img, MyImage.fan3Img],
      colors: colors,
      price: '\$ 22.67',
    ),
  ];
}
