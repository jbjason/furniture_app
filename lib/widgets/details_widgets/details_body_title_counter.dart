import 'package:flutter/material.dart';
import 'package:furniture_app/constant/my_color.dart';

class DetailsBodyTitleCounter extends StatelessWidget {
  const DetailsBodyTitleCounter({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
              fontSize: 26,
              letterSpacing: 1.5,
              fontWeight: FontWeight.w900,
              wordSpacing: 1.6),
        ),
        Container(
          width: 100,
          height: 40,
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.grey[200],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Icon(Icons.remove, color: MyColor.brownDark),
              SizedBox(width: 5),
              Text('01', style: TextStyle(color: MyColor.brownDark)),
              SizedBox(width: 5),
              Icon(Icons.add, color: MyColor.brownDark),
            ],
          ),
        ),
      ],
    );
  }
}
