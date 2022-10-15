import 'package:fincare1/todo/todo_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class AddTODO extends StatelessWidget {
  const AddTODO({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TODOController todoController=Get.put(TODOController());
    var textInputController=TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Data"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextField(
                controller: textInputController,
                decoration: InputDecoration(
                    hintText: "Enter data here",
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: (){
                         textInputController.clear();
                      },
                      icon: Icon(Icons.clear),
                    )
                ),
              ),
              ElevatedButton(onPressed:(){
                todoController.addTask(textInputController.text);
                textInputController.clear();
              }, child: Text("Add Data"))
            ],
          ),
        ),
      ),
    );
  }
}
