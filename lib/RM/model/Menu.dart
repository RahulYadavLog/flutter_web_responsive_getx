import 'package:flutter/cupertino.dart';

class Menu {
  String? name;
  IconData? icon;
  List<Menu>? subMenu = [];

  Menu({this.name,this.subMenu,this.icon});

  Menu.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    icon = json['icon'];
    if (json['subMenu'] != null) {
      subMenu!.clear();
      json['subMenu'].forEach((v) {
        subMenu?.add(new Menu.fromJson(v));
      });
    }
  }
}
