import 'package:fincare1/RM/view/user_class.dart';
import 'package:fincare1/expand_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../style/colors.dart';
import '../controller/rm_drawer_controller.dart';
import '../model/Cars.dart';
import '../product_screen.dart';
class MasterPage extends StatelessWidget {
  Widget? view;

  MasterPage() {
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
    return SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Expanded(
                flex:1,
                child: Container(
                  width: double.maxFinite,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height:80,
                        width: 80,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/branch_register.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),

                      ),
                      Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  Text("Last Successfull Login : ",style: TextStyle(color: Colors.grey)),
                                  Text("12-04-2022. 12:40",style: TextStyle(color: Colors.black),)
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Last unsuccessfull Login : ",style: TextStyle(color: Colors.grey)),
                                  Text("12-04-2022. 12:40",style: TextStyle(color: Colors.black),)
                                ],
                              ),
                            ],
                          ),
                          VerticalDivider(
                              color: Colors.grey
                          ),
                          Icon(Icons.notification_add,color: Colors.red,),
                          Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text("Welcome! ",style: TextStyle(color: Colors.grey)),
                                        Text("Ashok Kumar",style: TextStyle(color: Colors.black),),
                                      ],
                                    ),
                                    Text("654321",style: TextStyle(color: Colors.grey)),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Icon(Icons.arrow_drop_down),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                  color: Colors.grey[200]
              ),
              Expanded(
                flex: 9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                        child: SingleChildScrollView(
                          child: Container(
                            width: double.maxFinite,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
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
                                            title: Text(days[index].toString(),style: TextStyle(fontSize:14),),
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
                                                          ? Colors.yellow
                                                          : Colors.yellow
                                                          : Colors.black,
                                                      leading: Icon(
                                                        Icons.check_box_outline_blank,
                                                        color: Get.find<RmDrawerController>().selectedValue.value ==
                                                            e.speed.toString()
                                                            ? Get.find<RmDrawerController>().isSelected.value
                                                            ? Colors.yellow
                                                            : Colors.black
                                                            : Colors.black,
                                                      ),
                                                      title: Text(e.speed.toString(),style: TextStyle(fontSize:14)),
                                                      onTap: () {
                                                        selectedIndex = index;
                                                        Get.find<RmDrawerController>().mainSelectedValue(e.speed.toString());
                                                        Get.find<RmDrawerController>().selectedColor(true);
                                                        // Get.find<RmDrawerController>().changeScreen(0);
                                                        switch(e.speed.toString())
                                                        {
                                                          case "User Class":
                                                              Get.toNamed('/product');
                                                              break;
                                                          case "User Class & customer portfolio":
                                                            Get.toNamed('/home');
                                                            break;
                                                          case "User List":
                                                            Get.toNamed('/expend_list');
                                                            break;
                                                        }
                                                        // Get.snackbar(
                                                        //   "${e.speed.toString()}${Get.find<RmDrawerController>()
                                                        //       .isSelected.value}",
                                                        //   "content",
                                                        // );
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
                                // ListTile(
                                //   hoverColor: Colors.black12,
                                //   leading: Icon(Icons.menu),
                                //   title: Text("Dashboard"),
                                //   onTap: (){
                                //     Get.toNamed('/home');
                                //   },
                                // ),
                                // ListTile(
                                //   hoverColor: Colors.black12,
                                //   leading: Icon(CupertinoIcons.square_favorites_alt),
                                //   title: Text("Sales"),
                                //   onTap: (){
                                //     Get.toNamed('/expend_list');
                                //   },
                                // )
                              ],
                            ),
                          ),
                        )),
                    VerticalDivider(
                        color: Colors.grey
                    ),
                    Expanded(
                        flex: 8,
                        child: Container(
                          color: Colors.white,
                          child: view,
                        ))
                  ],
                ),
              ),
               Expanded(
                 flex:1,
                 child: Container(
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(color: Color(0xFF89dad0)),
              ),
               ),
            ],
          ),
        ));
  }
}
