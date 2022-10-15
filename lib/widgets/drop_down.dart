import 'package:fincare1/RM/controller/rm_drawer_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../desktop/controller/BookController.dart';
import '../desktop/controller/list_controller.dart';

class SettingsScreen extends StatelessWidget {
  RmDrawerController rmDrawerController=Get.find();
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Column(children: [
          Text('Select Language: '),
          SizedBox(height: 10.0),
          Obx( () => DropdownButton(
            hint: Text(
              'Select Language',
            ),
            onChanged: (newValue) {
              rmDrawerController.setSelected(newValue!);
            },
            value:rmDrawerController.selected.value==""?null:rmDrawerController.selected.value,
            items: rmDrawerController.language.map((selectedType) {
              return DropdownMenuItem(
                child: new Text(
                  selectedType,
                ),
                value: selectedType,
              );
            }).toList(),
          )
          ),
        ]),
      );
  }
}
