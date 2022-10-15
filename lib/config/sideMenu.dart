import 'package:fincare1/config/size_config.dart';
import 'package:flutter/material.dart';
import '../style/colors.dart';
class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
 var _mediaQueryData = MediaQuery.of(context).size.height;

    return Drawer(
      elevation: 0,
      child: Container(
        width: double.infinity,
        height: _mediaQueryData/100,
        decoration: BoxDecoration(color: AppColors.secondaryBg),
        child: SingleChildScrollView(
                  child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             Container(
               height: 100,
               alignment: Alignment.topCenter,
               width: double.infinity,
               padding: EdgeInsets.only(top: 20),
               child: SizedBox(
                    width: 35,
                    height: 20,
                    child: Icon(Icons.calendar_month),
                  ),
             ),
            
              IconButton(
                  iconSize: 20,
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  icon:Icon(Icons.home),
                  onPressed: () {}),
              IconButton(
                  iconSize: 20,
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  icon:Icon(Icons.home),
                  onPressed: () {}),
              IconButton(
                  iconSize: 20,
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  icon: Icon(Icons.access_alarm),
                  onPressed: () {}),
              IconButton(
                  iconSize: 20,
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  icon:Icon(Icons.credit_card),
                  onPressed: () {}),
              IconButton(
                  iconSize: 20,
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  icon: Icon(Icons.wifi_tethering_off),
                  onPressed: () {}),
              IconButton(
                  iconSize: 20,
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  icon: Icon(Icons.inbox),
                  onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}