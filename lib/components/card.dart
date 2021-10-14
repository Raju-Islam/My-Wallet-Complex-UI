import 'package:flutter/material.dart';
import 'package:mywallet_ui/config/colors.dart';
import 'package:mywallet_ui/config/size.dart';

class BankCard extends StatelessWidget {
  const BankCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = SizeConfig.getHeight(context);
    var width = SizeConfig.getWidth(context);
    double fontSize(double size) {
      return size * width / 414;
    }

    return Container(
      child: Stack(
        children: <Widget>[
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            width: width/1.8,
            child: Image.asset("assets/mastercard.png",
            fit: BoxFit.fill,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            height: height/10,
            width: width/1.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text("**** **** **** ",style: TextStyle(fontSize: fontSize(20),fontWeight: FontWeight.w500),),
                    Text("1930",style: TextStyle(fontSize: fontSize(30),fontWeight: FontWeight.w500),)
                  ],
                ),
                Text("Platinum Card".toUpperCase(),style: TextStyle(fontSize: fontSize(15),fontWeight: FontWeight.bold),)
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Container(
              height: height/16,
              width: width/6,
              decoration: BoxDecoration(
                color: AppColors.primaryWhite,
                boxShadow: AppColors.neumorpShadow,
                borderRadius: BorderRadius.circular(20)
              ),
            ),
          ),
        )
        ],
      ),
    );
  }
}
