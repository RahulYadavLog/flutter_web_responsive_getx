import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class WidgetPractice extends StatelessWidget {
  const WidgetPractice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    EdgeInsets edgeInsets=MediaQuery.of(context).viewPadding;
    final TapGestureRecognizer _tapGestureRecognizer=TapGestureRecognizer()..onTap=()
    {
     debugPrint("Hello World");
    };
    return Padding(
      padding:edgeInsets,
      child: Scaffold(
        body: Center(
          child: Container(
           child: RichText(
             text: TextSpan(
               text: "Share ",
               style: TextStyle(
                 color: Colors.black,
                 fontSize: 20,
               ),
               children: [
                 WidgetSpan(child: Icon(Icons.share))
                 // TextSpan(text: "Register",
                 // style: TextStyle(fontSize: 20,
                 // color: Colors.red,
                 // fontWeight: FontWeight.bold),
                 // recognizer:_tapGestureRecognizer
                 // )
               ]
             ),
           ),
          ),
        ),
      ),
    );
    // EdgeInsets edgeInsets = MediaQuery.of(context).viewPadding;
    // return Padding(
    //   padding: edgeInsets,
    //   child: Scaffold(
    //     body: Center(
    //       child: Container(
    //         child: Text(
    //           "A table allows the user to arrange the data in rows and columns. It is used to store and display our data in a structured format, which helps us to compare the pairs of related values easily. Flutter also allows the user to create a table layout in the mobile application.",
    //           style: TextStyle(
    //             fontSize: 15,
    //             color: Colors.black,
    //           ),
    //           textAlign: TextAlign.justify,
    //           softWrap: false,
    //           overflow: TextOverflow.ellipsis,
    //         ),
    //       ),
    //     ),
    //   ),
    // );
    // EdgeInsets edgeInsets=MediaQuery.of(context).viewPadding;
    // return Padding(
    //   padding:edgeInsets,
    //   child: Scaffold(
    //     body: Center(
    //         child: Text("Hello World",style: TextStyle(
    //           fontSize: 40,
    //           fontWeight: FontWeight.bold,
    //           foreground: Paint() ..color=Colors.red ..strokeWidth=2.0
    //             ..style =PaintingStyle.stroke
    //         ),),
    //     ),
    //   ),
    // );

    // return Scaffold(
    //   body: Center(
    //     child: Container(
    //       child:Text("Hello World",style: TextStyle(
    //         fontSize: 40,
    //         color: Colors.blue,
    //         fontWeight: FontWeight.bold,
    //         decoration: TextDecoration.combine([
    //           TextDecoration.underline,
    //           TextDecoration.overline,
    //         ]),
    //         decorationThickness: 2.0,
    //         decorationColor: Colors.red,
    //         decorationStyle: TextDecorationStyle.wavy,
    //         letterSpacing: 1.0,
    //         wordSpacing: 20,
    //         shadows: [
    //           Shadow(
    //             color: Colors.black,
    //             blurRadius: 2,
    //             offset: Offset(4,1)
    //           )
    //         ]
    //       ),
    //       ),
    //     ),
    //   ),
    // );

// EdgeInsets edgeInsets=MediaQuery.of(context).viewPadding;
//     return Padding(
//       padding:edgeInsets,
//       child: Scaffold(
//         body: Center(
//           child: Container(
//             color: Colors.red,
//           ),
//         ),
//       ),
//     );

    // Size size=MediaQuery.of(context).size;
    // Orientation orientation=MediaQuery.of(context).orientation;
    // double boxSize=size.shortestSide-50;
    //   return Scaffold(
    //     body: Center(
    //       child: Container(
    //
    //       ),
    //     ),
    //   );

    // return Scaffold(
    //   body: Center(
    //     child: Container(
    //       width: 400,
    //      height: 700,
    //      child: Stack(
    //        alignment: Alignment.topRight,
    //        children: [Container(
    //          width: 200,
    //          height: 200,
    //          color: Colors.red,
    //        ),
    //          Container(
    //            width: 100,
    //            height: 100,
    //            color: Colors.blue,
    //          )
    //        ],
    //      )
    //       ,
    //      color: Colors.grey,
    //     ),
    //   ),
    // );

    // return Scaffold(
    //   body: Center(
    //     child: Container(
    //       width: 400,
    //       height: 200,
    //       color: Colors.red,
    //       child:Wrap(
    //         direction: Axis.horizontal,
    //         alignment: WrapAlignment.spaceAround,
    //         runAlignment: WrapAlignment.end,
    //         spacing: 10,
    //         runSpacing: 20,
    //         verticalDirection: VerticalDirection.up,
    //         children: [
    //            ElevatedButton(onPressed: (){}, child: Text("Button1")),
    //            ElevatedButton(onPressed: (){}, child: Text("Button2")),
    //            ElevatedButton(onPressed: (){}, child: Text("Button3")),
    //            ElevatedButton(onPressed: (){}, child: Text("Button3")),
    //            ElevatedButton(onPressed: (){}, child: Text("Button3")),
    //
    //           ElevatedButton(onPressed: (){}, child: Text("Button1")),
    //            ElevatedButton(onPressed: (){}, child: Text("Button2")),
    //            ElevatedButton(onPressed: (){}, child: Text("Button3")),
    //            ElevatedButton(onPressed: (){}, child: Text("Button3")),
    //            ElevatedButton(onPressed: (){}, child: Text("Button3")),
    //         ],
    //       ) ,
    //     ),
    //   ),
    // );

    // return Scaffold(
    //   body: Center(
    //     child: Container(
    //       color: Colors.red,
    //       child:Row(
    //         mainAxisSize: MainAxisSize.max,
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         verticalDirection: VerticalDirection.down,
    //         children: [
    //            ElevatedButton(onPressed: (){}, child: Text("Button1")),
    //            ElevatedButton(onPressed: (){}, child: Text("Button2")),
    //            ElevatedButton(onPressed: (){}, child: Text("Button3")),
    //         ],
    //       ) ,
    //     ),
    //   ),
    // );

    // return Scaffold(
    //   body: Center(
    //       child: Container(
    //           padding: EdgeInsets.all(8),
    //           // constraints: BoxConstraints.expand(),
    //           width: 200,
    //           height: 200,
    //           alignment: Alignment.center,
    //           decoration: BoxDecoration(
    //             // color: Colors.blue,
    //             border: Border.all(
    //               // color: Colors.red,
    //               width: 2,
    //             ),
    //             borderRadius: BorderRadius.all(Radius.circular(12)),
    //               boxShadow: [BoxShadow(
    //                  color: Colors.red,
    //                 blurRadius: 4.0,
    //                 spreadRadius: 2.0,
    //               )],
    //             gradient: LinearGradient(
    //               begin: Alignment.centerLeft,
    //               end: Alignment.centerRight,
    //               colors: [Colors.blue,Colors.lightBlue]
    //             )
    //           ),
    //           // transform: Matrix4.rotationZ(0.5),
    //           child: Text("Welcome To Fincare"))),
    // );

    //Center Widget Property
    // return Scaffold(
    //   body: Center(
    //       heightFactor: 2, widthFactor: 2, child: Text("Welcome To Fincare")),
    // );
  }
}
