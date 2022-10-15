import 'package:fincare1/TabController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TabControllerApp tabController=Get.find();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: ()
          {
          Get.back();
          },
          icon: Icon(Icons.arrow_back,color: Colors.black,),
        ),
      ),
      body: Padding(
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
                          tabController.x.toString(),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        )),
                  );
              }
              ),
              GestureDetector(
                onTap: () {
                  tabController.decrease();
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

            ],
          ) ,
        ),
      ),
    );
  }
}
