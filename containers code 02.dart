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
    decoration: const BoxDecoration(
      border: Border(
        top: BorderSide(width: 5.0, color: Color(0xFFFFDFDFFF)),
        left: BorderSide(width: 5.0, color: Color(0xFFFFDFDFFF)),
        right: BorderSide(width: 5.0, color: Color(0xFFFF7F7F88)),
        bottom: BorderSide(width: 5.0, color: Color(0xFFFF7F7F88)),
      ),
      color: Color(0xFFBFBFCC),
    ),
    margin: const EdgeInsets.all(20.0),
    padding: const EdgeInsets.all(10.0),
        
    child: Text('Battle of containers',style : TextStyle(color:Colors.black)),
    width: 200.0,
    height: 100.0,
  ),
);
  }
}
