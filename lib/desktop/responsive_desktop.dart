import 'package:fincare1/desktop/controller/date_picker_controller.dart';
import 'package:fincare1/desktop/controller/list_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../config/appBarActionItems.dart';
import '../config/responsive.dart';
import '../config/sideMenu.dart';
import '../style/colors.dart';
import '../widgets/date_picker.dart';
import '../widgets/drop_down.dart';
import '../widgets/dropdown_widget.dart';
import 'model/NewObject.dart';

class ResponsiveDesktopScreen extends StatelessWidget {
  const ResponsiveDesktopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var date="";
    GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    final List<dynamic> itemCity = <dynamic>[
      'City',
      'Cardiolist',
      'Audiolist',
      'Dentist',
      'Neurologist',
      'Oncologist',
    ];
    List<DropdownMenuItem<String>> occasions = [];

    const List hospitalList = ["Jym Hospital", "Zed Hospital"];
    ListModelController listModelController = Get.put(ListModelController());
    var checkedValue = false;
    return Scaffold(
      key: _drawerKey,
      drawer: SizedBox(width: 100, child: SideMenu()),
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
              ),
            ),
          Expanded(
            flex: 8,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (Responsive.isDesktop(context))
                  Expanded(
                    flex: 1,
                    child: SideMenu(),
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
                            child: Table(
                              border: TableBorder.all(color: Colors.black),
                              // textDirection: TextDirection.rtl,
                              // defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
                              // border:TableBorder.all(width: 2.0,color: Colors.red),
                              children: [
                                TableRow(children: [
                                  Text(
                                    "Education",
                                    textScaleFactor: 1.5,
                                  ),
                                  Text("Institution name",
                                      textScaleFactor: 1.5),
                                  Text("University", textScaleFactor: 1.5),
                                ]),
                                TableRow(children: [
                                  Text("B.Tech", textScaleFactor: 1.5),
                                  Text("ABESEC", textScaleFactor: 1.5),
                                  Text("AKTU", textScaleFactor: 1.5),
                                ]),
                                TableRow(children: [
                                  Text("12th", textScaleFactor: 1.5),
                                  Text("Delhi Public School",
                                      textScaleFactor: 1.5),
                                  Text("CBSE", textScaleFactor: 1.5),
                                ]),
                                TableRow(children: [
                                  Text("High School", textScaleFactor: 1.5),
                                  Text("SFS", textScaleFactor: 1.5),
                                  Text("ICSE", textScaleFactor: 1.5),
                                ]),
                              ],
                            ),
                          )),
                      Expanded(flex: 2, child: SettingsScreen()),
                      Expanded(flex: 2, child:  Obx(
                            () => Text(
                          Get.find<DatePickerController>().selectedDate.value
                              .toString(),
                          style: TextStyle(fontSize: 25),
                        ),
                      ),),
                        Expanded(
                          flex: 2,
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
