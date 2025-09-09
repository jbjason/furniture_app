import 'package:flutter/material.dart';
import 'package:furniture_app/constant/my_color.dart';
import 'package:furniture_app/models/furniture.dart';
import 'package:furniture_app/widgets/details_widgets/details_appbar.dart';
import 'package:furniture_app/widgets/details_widgets/details_attributes.dart';
import 'package:furniture_app/widgets/details_widgets/details_black_shadow.dart';
import 'package:furniture_app/widgets/details_widgets/details_body.dart';
import 'package:furniture_app/widgets/details_widgets/details_images_counter.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.furniture});
  final Furniture furniture;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:MyColor. brownDark,
      body: Stack(
        children: [
          // images & image counter
          DetailsImagesCounter(images: furniture.img),
          Positioned.fill(
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 15),
                  DetailsAppbar(title: furniture.title),
                  // body Attributes
                  const DetailsAttributes(),
                  Expanded(child: DetailsBody(furniture: furniture)),
                ],
              ),
            ),
          ),
          // bottom stand black Shadow
          const DetailsBlackShadow(),
        ],
      ),
    );
  }
}
