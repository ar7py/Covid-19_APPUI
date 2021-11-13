import 'package:flutter/material.dart';
import 'package:covid_19_appui/constants/constant.dart';

class SymptomCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final bool isActive;

  const SymptomCard({
    Key? key,
    required this.imagePath,
    required this.title,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          isActive
              ? const BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 10,
            color: kActiveShadowColor,
          )
              : const BoxShadow(
              offset: Offset(0, 3), blurRadius: 6, color: kShadowColor)
        ],
      ),
      child: Column(
        children: [
          Image.asset(
            imagePath,
            height: 70,
          ),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
