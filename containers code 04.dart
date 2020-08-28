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
     alignment: Alignment.center,
    decoration:  BoxDecoration(
      border:  Border.all(color: Colors.yellow, width:5),
      
      shape: BoxShape.circle,
     color: Color(0xFFBFBFCC),
    ),
   
        
    child: Text('The Battle of containers',style : TextStyle(color:Colors.black)),
    width: 300.0,
    height: 300.0,
  ),
);
  }
}
