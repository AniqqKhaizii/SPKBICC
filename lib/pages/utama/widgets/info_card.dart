import 'package:flutter/material.dart';
import 'package:spkb_icc/constants/style.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final String value;
  final Color topColor;
  final bool isActive;
  final Function()? onTap;
  const InfoCard(
      {super.key,
      required this.title,
      required this.value,
      required this.topColor,
      required this.isActive,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
          onTap: onTap,
          child: Container(
              height: 136,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0XFF0A0C1E),
                boxShadow: [
                  BoxShadow(
                    color: dark.withOpacity(.8),
                    blurRadius: 10,
                    offset: Offset(0, 6), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.circular(2),
              ),
              child: Column(
                children: [
                  Expanded(
                      child: Container(
                    height: 40,
                  )),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: [
                      TextSpan(
                          text: "$title\n",
                          style: TextStyle(
                            fontSize: 14,
                            color: isActive ? active : lightGrey,
                          )),
                      TextSpan(
                          text: "$value",
                          style: TextStyle(
                            fontSize: 50,
                            color: isActive ? active : light,
                          )),
                    ]),
                  ),
                  Expanded(child: Container()),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          color: topColor,
                          height: 5,
                        ),
                      ),
                    ],
                  ),
                ],
              ))),
    );
  }
}
