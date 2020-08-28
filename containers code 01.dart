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
    margin: const EdgeInsets.all(20.0),
    padding: const EdgeInsets.all(10.0),
    color: Colors.yellow,    
    child: Text('Battle of containers',style : TextStyle(color:Colors.black)),
    width: 200.0,
    height: 100.0,
  ),
);
  }
}
