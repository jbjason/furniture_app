import 'package:flutter/material.dart';
import 'package:furniture_app/constant/my_color.dart';
import 'package:furniture_app/constant/my_image.dart';

class HomeCategory extends StatefulWidget {
  const HomeCategory({super.key});
  @override
  State<HomeCategory> createState() => _HomeCategoryState();
}

class _HomeCategoryState extends State<HomeCategory> {
  int isSelect = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        clipBehavior: Clip.none,
        padding: const EdgeInsets.only(left: 20),
        itemCount: 7,
        itemBuilder: (context, i) => InkWell(
          onTap: () => setState(() => isSelect = i),
          child: isSelect == i
              ? Container(
                  width: 75,
                  padding: const EdgeInsets.symmetric(horizontal: 7),
                  margin: const EdgeInsets.only(right: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: const [
                      BoxShadow(
                        color: MyColor.brownDark,
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                      BoxShadow(
                        color: Colors.white,
                        spreadRadius: 1,
                        blurRadius: 30,
                        offset: Offset(0, -5),
                      ),
                    ],
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [MyColor.brownLight, MyColor.brownDark],
                    ),
                  ),
                  child: _currentWidget(i),
                )
              : UnconstrainedBox(
                  child: Container(
                    height: 55,
                    width: 65,
                    margin: const EdgeInsets.only(right: 15),
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.grey[100]!, Colors.grey[50]!],
                      ),
                    ),
                    child: _currentWidget(i),
                  ),
                ),
        ),
      ),
    );
  }

  Widget _currentWidget(int i) => i == 0
      ? Center(
          child: Text(
            'All Product',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: i == isSelect ? 13 : 10,
              color: i == isSelect ? Colors.white : MyColor.brownDark,
              fontWeight: FontWeight.w400,
            ),
          ),
        )
      : Image.asset('${MyImage.icon1Img}$i.png',
          fit: BoxFit.contain,
          color: i == isSelect ? Colors.white : MyColor.brownDark);
}
