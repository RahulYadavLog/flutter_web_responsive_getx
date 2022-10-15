import 'package:fincare1/RM/controller/rm_drawer_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../routes/AppRoutes.dart';
import '../../style/colors.dart';
import '../model/Cars.dart';

class RMSideMenu extends StatelessWidget {
  RMSideMenu({Key? key, required this.days, this.dummyData}) : super(key: key);
  List<String> days;
  var dummyData;

  @override
  Widget build(BuildContext context) {
    var _mediaQueryData = MediaQuery
        .of(context)
        .size
        .height;
    var _mediaQueryDataWidth = MediaQuery
        .of(context)
        .size
        .width;
    var selectedIndex = 0;

    return Drawer(
        elevation: 0,
        child: Container(
        width:_mediaQueryDataWidth*0.2 ,
        height: _mediaQueryData,
        decoration: BoxDecoration(color: AppColors.secondaryBg),
    child: SingleChildScrollView(
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    Container(
    height: _mediaQueryData,
    alignment: Alignment.topCenter,
    width: double.infinity,
    child:
      ListView.builder(
      itemCount: days.length,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemBuilder: (_, index) {
      return Obx(()=>
       ExpansionTile(
        key: GlobalKey(),
        onExpansionChanged: (expended) {
        if (expended)
          Get.find<RmDrawerController>().mainSelectedColor(index);
        else
          Get.find<RmDrawerController>().mainSelectedColor(-1);
        },
        initiallyExpanded: index == Get.find<RmDrawerController>().mainSelectedIndex.value,
        title: Text(days[index].toString()),
        leading: Icon(Icons.check_box_outline_blank),
        trailing: const SizedBox(),
        children: [
        ...dummyData.map((e) {
        if (e.day == days[index]) {
        return Padding(
        padding: const EdgeInsets.only(
        left: 40.0),
        child: ListTile(
        textColor:
        Get.find<RmDrawerController>().selectedValue.value == e.speed.toString()
        ? Get.find<RmDrawerController>().isSelected.value
        ? Colors.blue
            : Colors.black
            : Colors.black,
        leading: Icon(
        Icons.check_box_outline_blank,
        color: Get.find<RmDrawerController>().selectedValue.value ==
        e.speed.toString()
        ? Get.find<RmDrawerController>().isSelected.value
        ? Colors.blue
            : Colors.black
            : Colors.black,
        ),
        title: Text(e.speed.toString()),
        onTap: () {
        selectedIndex = index;
        Get.find<RmDrawerController>().mainSelectedValue(e.speed.toString());
        Get.find<RmDrawerController>().selectedColor(true);
        Get.find<RmDrawerController>().changeScreen(0);
        Get.toNamed('/home');
        Get.snackbar(
        "${e.speed.toString()}${Get.find<RmDrawerController>()
            .isSelected.value}",
        "content",
        );
        },
        ),
        );
        }
        return Container();
        }).toList(),
        ]),
      );
  }

  ,
  ),
    ),
  ],
  ),
  ),
  )

  ,

  );
}}
