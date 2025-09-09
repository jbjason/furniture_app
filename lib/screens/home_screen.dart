import 'package:flutter/material.dart';
import 'package:furniture_app/widgets/home_widgets/home_appbar.dart';
import 'package:furniture_app/widgets/home_widgets/home_category.dart';
import 'package:furniture_app/widgets/home_widgets/home_navbar.dart';
import 'package:furniture_app/widgets/home_widgets/home_products.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key}) ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              // Appbar ,Title & Subtile
              HomeAppbar(),
              SizedBox(height: 3),
              // category
              HomeCategory(),
              SizedBox(height: 10),
              // products List
              HomeProducts(),
            ],
          ),
        ),
      ),
      extendBody: true,
      bottomNavigationBar: const HomeNavbar(),
    );
  }
}
