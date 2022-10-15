import 'package:fincare1/widgets/base_widgets/base_button.dart';
import 'package:flutter/material.dart';


import '../main.dart';

void main() => runApp(const MyApp());

class FourthPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Form Styling Demo';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatelessWidget {
  const MyCustomForm({this.hintText,this.outLineColor,this.textController});

  final String? hintText;
  final Color? outLineColor;
  final TextEditingController? textController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter a search term',
            ),
          ),
        ),
      ],
    );
  }
}
