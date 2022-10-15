import 'dart:math';

import 'package:fincare1/desktop/controller/date_picker_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../desktop/controller/list_controller.dart';


chooseDate() async {
  DateTime? pickedDate = await showDatePicker(
    context: Get.context!,
    initialDate: Get.find<DatePickerController>().selectedDate.value,
    firstDate: DateTime(2000),
    lastDate: DateTime(2024),
    //initialEntryMode: DatePickerEntryMode.input,
    // initialDatePickerMode: DatePickerMode.year,
    helpText: 'Select DOB',
    cancelText: 'Close',
    confirmText: 'Confirm',
    errorFormatText: 'Enter valid date',
    errorInvalidText: 'Enter valid date range',
    fieldLabelText: 'DOB',
    fieldHintText: 'Month/Date/Year',
    // selectableDayPredicate: disableDate
  );
  if (pickedDate != null && pickedDate != Get.find<DatePickerController>().selectedDate.value) {
    Get.find<DatePickerController>().selectedDate.value = pickedDate;
  }
}