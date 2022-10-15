import 'package:fincare1/first_page.dart';
import 'package:fincare1/routes/AppRoutes.dart';
import 'package:fincare1/second_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'TabController.dart';

class MyHomePage extends GetView<MyHomePage>{

  @override
  Widget build(BuildContext context) {
    TabControllerApp tabController=Get.find();
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<TabControllerApp>(
              builder: (tabControler) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.maxFinite,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF89dad0)),
                    child: Center(
                        child: Text(
                          tabControler.x.toString(),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        )),
                  ),
                );
              },
            ),
            GestureDetector(
              onTap: () {
                tabController.increase();
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF89dad0)),
                  child: Center(
                      child: Text(
                    "Tab",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed(AppRoutes.FIRST);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF89dad0)),
                  child: Center(
                      child: Text(
                    "Go to Frist Page",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                Get.toNamed(AppRoutes.TODOLIST);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF89dad0)),
                  child: Center(
                      child: Text(
                        "Go to Second Page",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed(AppRoutes.RMDASHBOARD);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF89dad0)),
                  child: Center(
                      child: Text(
                        "Go to Fourth Page",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
