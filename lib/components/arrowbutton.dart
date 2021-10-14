import 'package:flutter/material.dart';
import 'package:mywallet_ui/config/colors.dart';
import 'package:mywallet_ui/config/size.dart';

class ArrowButton extends StatelessWidget {
  final EdgeInsets margin;
  final Widget icon;
  ArrowButton({required this.margin, required this.icon});

  @override
  Widget build(BuildContext context) {
    var height = SizeConfig.getHeight(context);
    var width = SizeConfig.getWidth(context);

    return Expanded(child: Container(
      margin: margin,
      decoration: BoxDecoration(
        color: AppColors.primaryWhite,
        boxShadow: AppColors.neumorpShadow,
        borderRadius: BorderRadius.circular(15),
      ),
      alignment: Alignment.center,
      child: icon,
    ));
  }
}
