import 'package:fincare1/ListController.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class EditText extends StatelessWidget {
  const EditText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textInputController=TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar"),
      ),
      body: Container(
        child: Column(
          children: [
            Obx(()=>Text("${Get.find<ListController>().strData.value}")),
            TextField(
              controller: textInputController,
              decoration: InputDecoration(
                hintText: "Enter data here",
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                    onPressed: (){
                      // textInputController.clear();
                      Get.find<ListController>().updateValue(textInputController.text);

                    },
                  icon: Icon(Icons.clear),
                    )
              ),
            ),
            GestureDetector(onTap:(){
              Get.find<ListController>().updateValue(textInputController.text);
            },child: Text("Click Here"))
          ],
        ),
      ),
    );
  }
}
