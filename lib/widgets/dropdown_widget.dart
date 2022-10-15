
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget dropdownList(var _currency)
{
  var _curreenItemSelected="".obs;
  return Container(
    child: Container(
      padding: EdgeInsets.only(left: 16,right: 16),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey,width: 1),
          borderRadius: BorderRadius.circular(5)
      ),
      child: Obx(()=>
        DropdownButton<String>(
          isExpanded: true,
          underline: SizedBox(),
          items: _currency.map((String dropdownItem){
            return DropdownMenuItem<String>(value: dropdownItem,
              child: Text(dropdownItem),);
          }).toList(),
          onChanged: (String? newValueSelected){

              _curreenItemSelected=newValueSelected as RxString;
          },
          value: ("${_curreenItemSelected}"),
        ),
      ),
    ),
  );
}