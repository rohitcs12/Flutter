import 'package:flutter/material.dart';
import 'package:flutter_app/home.dart';
import 'package:flutter_app/splash.dart';
import 'package:flutter_app/widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Calculator(),
      debugShowCheckedModeBanner: false,
    );
  }
}
// class HomeWidget extends StatefulWidget {
//   @override
//   _HomeWidgetState createState() => _HomeWidgetState();
// }
//
// class _HomeWidgetState extends State<HomeWidget> {
//   int _index=0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: appbar(context),
//       backgroundColor: Colors.white,
//       elevation: 0.1,),
//       body: Column(children: <Widget>[
//         Spacer(),
//         Padding(
//           padding:  EdgeInsets.only(top:10.0,left: 18.0,bottom: MediaQuery.of(context).padding.bottom),
//           child: Row(
//             children: <Widget>[
//               GestureDetector(
//                 onTap: (){
//                   setState(() {
//                     _index=0;
//                   });
//                 },
//                 child: Container(
//                   decoration: BoxDecoration(color: _index==0?Colors.red:Colors.transparent,borderRadius: BorderRadius.circular(25.0)),
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical:12.0),
//                     child: Row(children: <Widget>[
//                     Icon(Icons.home,color: _index==0?Colors.white:Colors.black,),
//                       Text(_index==0?"Home":"",style:TextStyle(color: _index==0?Colors.white:Colors.black))
//             ],),
//                   ),
//                 ),
//               ),
//               GestureDetector(
//                 onTap: (){
//                   setState(() {
//                     _index=1;
//                   });
//                 },
//                 child: Container(
//                   decoration: BoxDecoration(color: _index==1?Colors.red:Colors.transparent,borderRadius: BorderRadius.circular(25.0)),
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical:12.0),
//                     child: Row(children: <Widget>[
//                       Icon(Icons.home,color: _index==1?Colors.white:Colors.black,),
//                       Text(_index==1?"Home":"",style: TextStyle(color: _index==1?Colors.white:Colors.black),)
//                     ],),
//                   ),
//                 ),
//               ),
//               GestureDetector(
//                 onTap: (){
//                   setState(() {
//                     _index=2;
//                   });
//                 },
//                 child: Container(
//                   decoration: BoxDecoration(color:_index==2?Colors.red:Colors.transparent,borderRadius: BorderRadius.circular(25.0)),
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical:12.0),
//                     child: Row(children: <Widget>[
//                       Icon(Icons.home,color: _index==2?Colors.white:Colors.black,),
//                       Text(_index==2?"Home":"")
//                     ],),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         )
//       ],),
//     );
//   }
// }
class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Widget CustomButton(String btnval)
  {
    Expanded(
      child: OutlineButton(
        onPressed: (){},
        padding: EdgeInsets.all(25.0),
        child: Text(btnval),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Row(
              children:<Widget>[CustomButton("9"),
              CustomButton("8")
              ],
            )
          ],
        ),
      ),
    );
  }
}
