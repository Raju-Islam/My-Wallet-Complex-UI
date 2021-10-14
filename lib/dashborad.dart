import 'package:flutter/material.dart';
import 'package:mywallet_ui/components/appbar.dart';
import 'package:mywallet_ui/config/colors.dart';
import 'package:mywallet_ui/config/size.dart';
import 'package:mywallet_ui/widget.dart/cardWidget.dart';
import 'package:mywallet_ui/widget.dart/expensesWidget.dart';

class DashBoradPage extends StatefulWidget {
  const DashBoradPage({Key? key}) : super(key: key);

  @override
  _DashBoradPageState createState() => _DashBoradPageState();
}

class _DashBoradPageState extends State<DashBoradPage> {
  @override
  Widget build(BuildContext context) {
    var height = SizeConfig.getHeight(context);
    var width = SizeConfig.getWidth(context);
    return Scaffold(
      body: Container(
        color: AppColors.primaryWhite,
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                height: height/8,
                child: CustomAppBar(),
              ),
              Expanded(child: CardWidget()),
              Expanded(child: ExpensesWidget()),
            ],
          ),
        ),
      ),
    );
  }
}
