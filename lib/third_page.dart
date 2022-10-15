import 'package:fincare1/ListController.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'TabController.dart';
class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ListController listController=Get.find();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: ()
        {
          Get.back();
        },
          icon: Icon(Icons.arrow_back,color: Colors.black,),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            width: double.maxFinite,
            height: double.maxFinite,
            child:Column(
              children: [
                GetBuilder<TabControllerApp>(
                    builder:(tabController){
                      return Container(
                        width: double.maxFinite,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFF89dad0)),
                        child: Center(
                            child: Text(
                              "X value "+Get.find<TabControllerApp>().x.toString(),
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            )),
                      );
                    }
                ),
              Obx(()=>Padding(
                padding: const EdgeInsets.fromLTRB(0,8.0,0,0),
                child: Container(
                            width: double.maxFinite,
                            height: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xFF89dad0)),
                            child: Center(
                                child: Text(
                                  "Y value "+Get.find<TabControllerApp>().y.value.toString(),
                                  style: TextStyle(fontSize: 20, color: Colors.white),
                                )),
                          ),
              ),
              ),
                GetBuilder<TabControllerApp>(
                    builder:(tabController){
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(0,8.0,0,0),
                        child: Container(
                          width: double.maxFinite,
                          height: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFF89dad0)),
                          child: Center(
                              child: Text(
                                "Total X and Y=${Get.find<TabControllerApp>().z}",
                                style: TextStyle(fontSize: 20, color: Colors.white),
                              )),
                        ),
                      );
                    }
                ),

                GestureDetector(
                  onTap: () {
                    Get.find<TabControllerApp>().increase();
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
                    Get.find<TabControllerApp>().increaseY();
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
                    Get.find<TabControllerApp>().add();
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
                            "Total X and Y",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.find<ListController>().setValue(Get.find<TabControllerApp>().x);
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
                            "Add data into list",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
                    ),
                  ),
                ),


              ],
            ) ,
          ),
        ),
      ),
    );

  }
}
