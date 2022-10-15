import 'package:fincare1/third_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            GestureDetector(
              onTap: ()
              {
                Get.to(ThirdPage());
              },
              child: Container(
              width: double.maxFinite,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF89dad0)),
              child: Center(
                  child: Text("Go to Third Page",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
          ),
            )
            ],
          ) ,
        ),
      ),
    );
  }
}
