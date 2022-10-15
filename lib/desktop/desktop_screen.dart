import 'package:fincare1/desktop/controller/list_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../ListController.dart';
import '../RM/model/Cars.dart';
import '../TabController.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery
        .of(context)
        .size
        .width;
    var height = MediaQuery
        .of(context)
        .size
        .height;
    ListModelController listModelController = Get.put(ListModelController());
    var selectedIndex = 0;
    var selectedValue = "";
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
    var checkedValue = false;
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: double.maxFinite,
              height: height * .1,
              decoration: BoxDecoration(color: Color(0xFF89dad0)),
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                        leading: const Icon(Icons.list),
                        trailing: const Text(
                          "GFG",
                          style: TextStyle(color: Colors.green, fontSize: 15),
                        ),
                        title: Text("List item ${index}"));
                  }),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.maxFinite,
                  height: height * .75,
                  child: Row(
                    children: [
                      Container(
                        width: width * .3,
                        height: height,
                        decoration: BoxDecoration(color: Color(0xFF89dad0)),
                        child: Container(
                          child: ListView.builder(
                            itemCount: _days.length,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (_, index) {
                              return GetBuilder<ListModelController>(
                                  builder: (mainController) {
                                    return ExpansionTile(
                                        key: GlobalKey(),
                                        onExpansionChanged: (expended) {
                                          if (expended)
                                            mainController.mainSelectedColor(index);
                                          else
                                            mainController.mainSelectedColor(-1);
                                        },
                                        initiallyExpanded: index == mainController.mainSelectedIndex,
                                        title: Text(_days[index].toString()),
                                        leading: Icon(
                                            Icons.check_box_outline_blank),
                                        trailing: const SizedBox(),
                                        children: [
                                          ...dummyData.map((e) {
                                            if (e.day == _days[index]) {
                                              return GetBuilder<
                                                  ListModelController>(
                                                  builder: (controller) {
                                                    return Padding(
                                                      padding: const EdgeInsets
                                                          .only(left: 40.0),
                                                      child: ListTile(
                                                        textColor: selectedValue ==
                                                            e.speed.toString()
                                                            ? controller
                                                            .isSelected
                                                            ? Colors.white
                                                            : Colors.black
                                                            : Colors.black,
                                                        leading: Icon(Icons
                                                            .check_box_outline_blank,
                                                          color: selectedValue ==
                                                              e.speed.toString()
                                                              ? controller
                                                              .isSelected
                                                              ? Colors.white
                                                              : Colors.black
                                                              : Colors.black,),
                                                        title: Text(
                                                            e.speed.toString()),
                                                        onTap: () {
                                                          selectedIndex = index;
                                                          selectedValue =
                                                              e.speed
                                                                  .toString();
                                                          controller
                                                              .selectedColor(
                                                              true);
                                                          Get.snackbar(
                                                            "${e.speed
                                                                .toString()}${controller
                                                                .isSelected}",
                                                            "content",
                                                          );
                                                        },
                                                      ),
                                                    );
                                                  }
                                              );
                                            }
                                            return Container();
                                          }).toList(),
                                        ]);
                                  }
                              );
                            },
                          ),
                        ),
                      ),
                      Container(
                        width: width * .65,
                        height: height,
                        child: Container(
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
                                Text("Institution name", textScaleFactor: 1.5),
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
                        ),
                      )
                    ],
                    // child:  DataTable(
                    //   border: TableBorder.all(color: Colors.red,
                    //     width: 5.0,
                    //   ),
                    //   columns: [
                    //     DataColumn(label: Text(
                    //         'User Class',
                    //         style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                    //     )),
                    //     DataColumn(label: Text(
                    //         'Descriptio dfgggdgfdgggf',
                    //         style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                    //     )),
                    //   ],
                    //   rows: [
                    //     DataRow(cells: [
                    //       DataCell(Text('RM',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
                    //       DataCell(Text('Relationship Manager')),
                    //     ]),
                    //     DataRow(cells: [
                    //       DataCell(Text('WRM',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
                    //       DataCell(Text('Johnsdgsdgsdggdgdsggsd')),
                    //     ]),
                    //     DataRow(cells: [
                    //       DataCell(Text('10',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
                    //       DataCell(Text('Harry')),
                    //     ]),
                    //     DataRow(cells: [
                    //       DataCell(Text('15',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
                    //       DataCell(Text('Peter')),
                    //     ]),
                    //   ],
                    // ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.maxFinite,
              height: height * .1,
              decoration: BoxDecoration(color: Color(0xFF89dad0)),
            ),
          ],
        ),
      ),
    );
  }
}
