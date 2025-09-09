import 'package:flutter/material.dart';
import 'package:furniture_app/constant/my_color.dart';

class DetailsAppbar extends StatelessWidget {
  const DetailsAppbar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () => Navigator.pop(context),
            child: _appBarIcon(Icons.arrow_back_ios_new_sharp),
          ),
          Text(
            title,
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          _appBarIcon(Icons.more_vert_sharp),
        ],
      ),
    );
  }

  Widget _appBarIcon(IconData icon) => Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: Icon(icon, color: MyColor.brownDark),
      );
}
