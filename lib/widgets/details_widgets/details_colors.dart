import 'package:flutter/material.dart';

class DetailsColors extends StatelessWidget {
  const DetailsColors({super.key, required this.colors});
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        colors.length,
        (i) => CircleAvatar(
          radius: 20,
          backgroundColor: i == 0 ? colors[i] : Colors.transparent,
          child: CircleAvatar(
            radius: 18,
            backgroundColor: i == 0 ? Colors.white : Colors.transparent,
            child: Container(
              margin: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: colors[i],
                boxShadow: [
                  BoxShadow(
                    color: colors[i],
                    spreadRadius: 1,
                    blurRadius: 50,
                  ),
                  const BoxShadow(
                    color: Colors.white,
                    spreadRadius: 3,
                    blurRadius: 80,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
