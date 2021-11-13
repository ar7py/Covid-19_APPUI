import 'package:flutter/material.dart';
import 'package:covid_19_appui/constants/constant.dart';

class CaseCounter extends StatelessWidget {
  final int number;
  final Color color;
  final String title;
  const CaseCounter({
    Key? key, required this.number, required this.color, required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(6),
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color.withOpacity(0.26),
          ),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.transparent,
              border: Border.all(
                color: color,
                width: 2,
              ),
            ),
          ),
        ),
        const SizedBox(height: 10,),
        Text('$number',
          style:  TextStyle(
            fontSize: 30,
            color: color,
          ),
        ),
        Text(title, style: kTextSubtitleStyle,),
      ],
    );
  }
}