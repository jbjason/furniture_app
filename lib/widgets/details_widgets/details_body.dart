import 'package:flutter/material.dart';
import 'package:furniture_app/constant/my_color.dart';
import 'package:furniture_app/models/furniture.dart';
import 'package:furniture_app/widgets/details_widgets/details_body_title_counter.dart';
import 'package:furniture_app/widgets/details_widgets/details_colors.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key, required this.furniture});
  final Furniture furniture;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(50),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // colors
          DetailsColors(colors: furniture.colors),
          const SizedBox(height: 30),
          // Title & Quantity counter
          DetailsBodyTitleCounter(title: furniture.title),
          const SizedBox(height: 20),
          // details
          Text(
            furniture.details,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(color: MyColor.textColor),
          ),
          const Spacer(),
          // Price & Cart button
          _priceAndCartButton()
        ],
      ),
    );
  }

  Widget _priceAndCartButton() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Text(
                  furniture.price,
                  style:
                      const TextStyle(color: MyColor.brownDark, fontSize: 26),
                ),
                const Text(
                  'Total Payble',
                  style: TextStyle(color: MyColor.textColor),
                ),
              ],
            ),
          ),
          Container(
            clipBehavior: Clip.none,
            width: 160,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: MyColor.orangeDark,
              boxShadow: const [
                BoxShadow(
                  color: MyColor.orangeDark,
                  spreadRadius: 1,
                  blurRadius: 30,
                ),
                BoxShadow(
                  color: Colors.white,
                  spreadRadius: 3,
                  blurRadius: 80,
                )
              ],
            ),
            child: Row(
              children: [
                Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white24),
                    child: const Icon(Icons.shopping_cart_outlined,
                        color: Colors.white)),
                const SizedBox(width: 6),
                const Text(
                  'Add to Cart',
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
        ],
      );
}
