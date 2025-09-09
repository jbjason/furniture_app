import 'package:flutter/material.dart';

class Furniture {
  final String title, details;
  final List<String> img;
  final String price;
  final List<Color> colors;

  const Furniture(
      {required this.title,
      required this.details,
      required this.img,
      required this.colors,
      required this.price});
}
