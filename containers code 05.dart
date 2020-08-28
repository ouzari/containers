import 'package:flutter/material.dart';

final Color blue = Colors.blue;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: blue),
      debugShowCheckedModeBanner: false,
      home: Scaffold(         
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
  child: Container(
    padding : EdgeInsets.all(10),
    decoration:  BoxDecoration(
      border:  Border.all(color: Colors.yellow, width:5),      
      
      boxShadow: [
      BoxShadow(
        color: Colors.black,
        blurRadius: 2.0, // has the effect of softening the shadow
        spreadRadius: 2.0, // has the effect of extending the shadow
        offset: Offset(
          5.0, // horizontal, move right 10
          5.0, // vertical, move down 10
        ),
      )
    ],
      color: Color(0xFFBFBFCC),
    ),   
        
    child: Text('The Battle of containers',style : TextStyle(color:Colors.black)),
    width: 300.0,
    height: 300.0,
  ),
);
  }
}
