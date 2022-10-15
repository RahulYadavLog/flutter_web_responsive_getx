import 'package:fincare1/RM/common/rm_side_menu.dart';
import 'package:fincare1/RM/controller/rm_drawer_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../config/appBarActionItems.dart';
import '../../config/responsive.dart';
import '../../config/sideMenu.dart';
import '../../desktop/controller/BookController.dart';
import '../../desktop/controller/date_picker_controller.dart';
import '../../style/colors.dart';
import '../../widgets/date_picker.dart';
import '../../widgets/drop_down.dart';
import '../model/Cars.dart';
import 'main_drawer_page.dart';
class RMDashboard extends StatelessWidget {
  const RMDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> _days = [
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
    var height=MediaQuery.of(context).size.height;
    RmDrawerController rmDrawerController=Get.find();
    return Scaffold(
      key: _drawerKey,
      drawer: SizedBox(
          child: RMSideMenu(days:_days,dummyData:dummyData,)),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              Expanded(
                flex: 1,
                child: Container(
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(color: Color(0xFF89dad0)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/ambulance.png',
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
            Expanded(
              flex: 8,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (Responsive.isDesktop(context))
                    Expanded(
                      flex:Responsive.isMobile(context)?2:2,
                      child: RMSideMenu(days:_days,dummyData:dummyData,),
                    ),
                  Expanded(
                    flex: 10,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child:MasterPage(),
                            )),
                         Expanded(flex: 2, child:
                   SettingsScreen()
                             ),
                        Expanded(flex: 1, child: Obx(
                              () =>
                              Text(
                                Get
                                    .find<DatePickerController>()
                                    .selectedDate
                                    .value
                                    .toString(),
                                style: TextStyle(fontSize: 25),
                              ),
                        ),),
                        Expanded(
                          flex: 1,
                          child: ElevatedButton(
                            onPressed: () {
                              chooseDate();
                            },
                            child: Text('Select Date'),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            if (Responsive.isDesktop(context))
              Expanded(
                flex: 1,
                child: Container(
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(color: Color(0xFF89dad0)),
                ),
              ),
          ],
      ),
    );
  }
}
