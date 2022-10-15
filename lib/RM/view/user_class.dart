import 'package:flutter/material.dart';
class UserClassScreen extends StatelessWidget {
  const UserClassScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Table(
        border: TableBorder.all(color: Colors.grey),
        // textDirection: TextDirection.rtl,
        // defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
        // border:TableBorder.all(width: 2.0,color: Colors.red),
        children: [
          TableRow(children: [
            Text(
              "Education",
              textScaleFactor: 1.5,
            ),
            Text("Institution name",
                textScaleFactor: 1.5),
          ]),
          TableRow(children: [
            
            Text("B.Tech", textScaleFactor: 1.5),
            Text("ABESEC", textScaleFactor: 1.5),
          ]),
          TableRow(children: [
            Text("12th", textScaleFactor: 1.5),
            Text("Delhi Public School",
                textScaleFactor: 1.5),
          ]),
          TableRow(children: [
            Text("High School", textScaleFactor: 1.5),
            Text("SFS", textScaleFactor: 1.5),
          ]),
        ],
      ),
    );
  }
}
