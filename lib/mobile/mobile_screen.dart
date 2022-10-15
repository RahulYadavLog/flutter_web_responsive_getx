import 'package:fincare1/RM/view/user_class.dart';
import 'package:fincare1/expand_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../RM/common/rm_side_menu.dart';
import '../RM/controller/rm_drawer_controller.dart';
import '../RM/model/Cars.dart';
import '../RM/product_screen.dart';
import '../config/appBarActionItems.dart';
import '../config/responsive.dart';
import '../style/colors.dart';


class MobileScreen extends StatelessWidget {
  Widget? view;

  MobileScreen() {
    Map<String, Widget> InnterRoutes = {'home': UserClassScreen(), 'expend_list': ExpendsList(),'product':ProductScreen()};
    view = InnterRoutes[Get.parameters['page_name']];
  }
  List<String> days = [
    'Home',
    'C Management',
    'Master Data',
    'User Management',
    'Branch Management',
  ];
  List<Cars> dummyData = [
    Cars(
      model: 'Fiat',
      speed: 'User Class',
      day: 'User Management',
    ),
    Cars(
      model: 'Fiat',
      speed: 'User Class & customer portfolio',
      day: 'User Management',
    ),
    Cars(
      model: 'Maruti',
      speed: 'User List',
      day: 'User Management',
    ),
    Cars(
      model: 'Hyundai',
      speed: 'Branch Category',
      day: 'Branch Management',
    ),
    Cars(
      model: 'Toyota',
      speed: 'Branch List',
      day: 'Branch Management',
    ),
  ];
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
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
    return Scaffold(
      key: _drawerKey,
      drawer: Drawer(
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
                                          // Get.find<RmDrawerController>().changeScreen(0);
                                          bottomSheet(context);
                                          // Get.toNamed('/product');
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

      ),
      appBar: !Responsive.isDesktop(context)
          ? AppBar(
        elevation: 0,
        backgroundColor: AppColors.white,
        leading: IconButton(
            onPressed: () {
              _drawerKey.currentState!.openDrawer();
            },
            icon: Icon(Icons.menu, color: AppColors.black)),
        actions: [
          AppBarActionItems(),
        ],
      )
          : PreferredSize(
        preferredSize: Size.zero,
        child: SizedBox(),
      ),
      body: Column(
        children: [
          Expanded(
              flex: 5,
              child: Container(
                color: Colors.white,
                child: view,
              ))
        ],
      ),
    );
  }
  void bottomSheet(BuildContext context)
  {
     showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) {
      return Container(
          height: 200,
          color: Colors.amber,
          child: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
          const Text('Modal BottomSheet'),
    ElevatedButton(
    child: const Text('Close BottomSheet'),
  onPressed: () => Navigator.pop(context),
  ),
  ],
  ),
    )
      );
    });
  }
}
