import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:covid_19_appui/widgets/clipper.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:covid_19_appui/constants/constant.dart';
import 'package:covid_19_appui/widgets/symptomcard.dart';
import 'package:covid_19_appui/widgets/preventioncard.dart';
import 'package:covid_19_appui/screens/home.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipPath(
            clipper: CovidClipper(),
            child: Container(
              padding: const EdgeInsets.only(left: 40, top: 40, right: 20),
              height: 270.0,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xFF3383CD),
                      Color(0xFF11249F),
                    ]),
                image: DecorationImage(
                  image: AssetImage('images/virus.png'),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 30.0,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Expanded(
                    child: Stack(
                      children: [
                        SvgPicture.asset(
                          'images/coronadr.svg',
                          width: 230,
                          fit: BoxFit.fitWidth,
                          alignment: Alignment.topCenter,
                        ),
                        Positioned(
                          top: 20,
                          left: 150,
                          child: Text(
                            'Get To Know \nAbout Covid-19',
                            style: kTextHeadingStyle.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Symptoms',
                  style: kTitleText,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SymptomCard(
                      imagePath: 'images/caugh.png',
                      title: 'Caugh',
                      isActive: true,
                    ),
                    SymptomCard(
                      imagePath: 'images/fever.png',
                      title: 'Fever',
                    ),
                    SymptomCard(
                      imagePath: 'images/headache.png',
                      title: 'Headache',
                    ),
                  ],
                ),
                const SizedBox(height: 15,),
                const Text('Prevention', style: kTitleText,),
                const SizedBox(height: 15,),
                const PreventionCard(imgPath: 'images/wear_mask.png',title: 'Wear MAsk',),
                const PreventionCard(imgPath: 'images/wash_hands.png',title: 'Wash Hands',),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
