// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:mywallet_ui/components/card.dart';
import 'package:mywallet_ui/config/colors.dart';
import 'package:mywallet_ui/config/size.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = SizeConfig.getHeight(context);
    var width = SizeConfig.getWidth(context);
    double fontSize(double size) {
      return size * width / 414;
    }

    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: width / 20),
          alignment: Alignment.topLeft,
          child: Text(
            "Card Selected",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: fontSize(20),
            ),
          ),
        ),
        Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                // ignore: prefer_const_constructors
                physics: BouncingScrollPhysics(),
                itemBuilder: (BuildContext contex, index) => Container(
                      width: width,
                      decoration: BoxDecoration(
                        color: AppColors.primaryWhite,
                        boxShadow: AppColors.neumorpShadow,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      margin: EdgeInsets.symmetric(
                          horizontal: width / 25, vertical: height / 30),
                      child: Stack(
                        children: [
                          Positioned.fill(
                              top: 150,
                              bottom: -200,
                              left: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.blue.shade900
                                              .withOpacity(0.2),
                                          blurRadius: 50,
                                          spreadRadius: -2,
                                          offset: Offset(0, 0))
                                    ],
                                    shape: BoxShape.circle,
                                    color: Colors.white30),
                              )),
                          Positioned.fill(
                            top: -100,
                            bottom: -100,
                            left: -300,
                            child: Container(
                              decoration: BoxDecoration(boxShadow: [
                                BoxShadow(
                                    color:
                                        Colors.blue.shade900.withOpacity(0.2),
                                    blurRadius: 50,
                                    spreadRadius: 2,
                                    offset: Offset(20, 0)),
                                BoxShadow(
                                    color: Colors.white12,
                                    blurRadius: 0,
                                    spreadRadius: -2,
                                    offset: Offset(0, 0)),
                              ], shape: BoxShape.circle, color: Colors.white30),
                            ),
                          ),
                          BankCard(),
                        ],
                      ),
                    )))
      ],
    );
  }
}
