import 'package:fincare1/ui/dashboard_layout.dart';
import 'package:flutter/material.dart';

import 'RM/model/Menu.dart';

class ExpendsList extends StatefulWidget {
  const ExpendsList({Key? key}) : super(key: key);

  @override
  State<ExpendsList> createState() => _ExpendsListState();
}

class _ExpendsListState extends State<ExpendsList> {
  @override
  Widget build(BuildContext context) {
    List data = [
      {
        "name": "Sales",
        "icon": Icons.payment,
        "subMenu": [
          {"name": "Orders"},
          {"name": "Invoices"}
        ]
      },
      {
        "name": "Marketing",
        "icon": Icons.volume_up,
        "subMenu": [
          {
            "name": "Promotions",
            "subMenu": [
              {"name": "Catalog Price Rule"},
              {"name": "Cart Price Rules"}
            ]
          },
          {
            "name": "Communications",
            "subMenu": [
              {"name": "Newsletter Subscribers"}
            ]
          },
          {
            "name": "SEO & Search",
            "subMenu": [
              {"name": "Search Terms"},
              {"name": "Search Synonyms"}
            ]
          },
          {
            "name": "User Content",
            "subMenu": [
              {"name": "All Reviews"},
              {"name": "Pending Reviews"}
            ]
          }
        ]
      }
    ];
    List<Menu> dataList = [];

      data.forEach((element) {
        dataList.add(Menu.fromJson(element));
      });

    return Scaffold(
        body: Column(
      children: [
        Expanded(flex: 1, child: Text("Expend List")),
        Expanded(
          flex: 10,
          child: ListView.builder(
            itemCount: dataList.length,
            itemBuilder: (BuildContext context, int index) =>
                _buildList(dataList[index]),
          ),
        ),
      ],
    ));
  }

  Widget _buildList(Menu list) {
    if (list!.subMenu!.isEmpty)
      return Builder(builder: (context) {
        return ListTile(
          focusColor: Colors.red,
            selectedTileColor: Colors.red,
            onTap: () {

            },
            leading: SizedBox(),
            title: Text(list.name.toString()));
      });
    return ExpansionTile(
      leading: Icon(list.icon),
      title: Text(
        list.name.toString(),
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      children: list.subMenu!.map(_buildList).toList(),
    );
  }
}
