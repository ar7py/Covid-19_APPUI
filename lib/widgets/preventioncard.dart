import 'package:flutter/material.dart';
import 'package:covid_19_appui/constants/constant.dart';

class PreventionCard extends StatelessWidget {
  final String imgPath;
  final String title;

  const PreventionCard({
    Key? key, required this.imgPath, required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 156,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Container(
            height: 136,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 8),
                    blurRadius: 20,
                    color: kShadowColor,
                  ),
                ]
            ),
          ),
          Image.asset(imgPath),
          Positioned(
            top: 60,
            left: 160,
            child: SizedBox(
              height: 136,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                    style: kTitleText.copyWith(
                      fontSize: 26,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
