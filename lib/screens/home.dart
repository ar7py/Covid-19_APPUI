import 'package:covid_19_appui/constants/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:covid_19_appui/widgets/clipper.dart';
import 'package:covid_19_appui/widgets/casecounter.dart';
import 'package:covid_19_appui/screens/info.dart';

class Home extends StatelessWidget {
  String dropdownvalue = 'India';
  var items = [
    'India',
    'Indonesia',
    'United States',
    'United Kingdom',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ClipPath(
            clipper: CovidClipper(),
            child: Container(
              padding: const EdgeInsets.only(left: 40, top: 50, right: 20),
              height: 350,
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) {
                              return const Info();
                            }),
                      );
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
                          'images/Drcorona.svg',
                          width: 230,
                          fit: BoxFit.fitWidth,
                          alignment: Alignment.topCenter,
                        ),
                        Positioned(
                          top: 20,
                          left: 150,
                          child: Text(
                            'All You Need \nIs Stay Home',
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
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blueGrey.shade50,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(
                color: const Color(0xFF3383CD),
              ),
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  'images/ts-map-pin.svg',
                  height: 25,
                  width: 25,
                ),
                const SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: DropdownButton(
                      isExpanded: true,
                      underline: const SizedBox(),
                      icon: const Icon(Icons.keyboard_arrow_down),
                      value: dropdownvalue,
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        // setState(() {
                        //   dropdownvalue = newValue!;
                        // });
                      }),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    RichText(
                      text: const TextSpan(children: [
                        TextSpan(
                          text: 'Case Update\n',
                          style: kTitleText,
                        ),
                        TextSpan(
                            text: 'Newest Update November 12',
                            style: TextStyle(
                              color: kLightColorText,
                            )),
                      ]),
                    ),
                    const Spacer(),
                    const Text(
                      'See Details',
                      style: TextStyle(
                          color: kPrimaryColor, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(0, 4),
                          blurRadius: 30,
                          color: kShadowColor,
                        ),
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      CaseCounter(
                        number: 13091,
                        color: kInfectedColor,
                        title: 'Infected',
                      ),
                      CaseCounter(
                        number: 131,
                        color: kDethColor,
                        title: 'Deaths',
                      ),
                      CaseCounter(
                        number: 91,
                        color: kRecoveredColor,
                        title: 'Recovered',
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Spread Of Virus',
                      style: kTitleText,
                    ),
                    Text(
                      'See Details',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 30,
                          color: kShadowColor,
                        ),
                      ]),
                  child: Image.asset(
                    'images/map.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
