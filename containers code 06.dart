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
    return   
    Stack(  
    
    children: <Widget>[    
       
       Container(
        alignment: Alignment(1.0, 1.0),
        height: 300,
        width: 300,
        child:  Text('1'),
        color: Colors.green,
      ),
    
      Container(
        alignment: Alignment(0.0, 1.0),
        height: 200,
        width: 200,
        child: Text('2'),
        color: Colors.brown,
      ),
    Container(
      alignment: Alignment(-1.0, 1.0),
      height: 100,
      width: 100,
      child: Text('3'),
        color: Colors.cyan,
    ),
  ],
 
);
  }
}
