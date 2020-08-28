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
     
    decoration:  BoxDecoration(
      border:  Border.all(color: Colors.yellow, width:5),
      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    bottomRight: Radius.circular(25.0)),
     color: Color(0xFFBFBFCC),
    ),
    margin: const EdgeInsets.all(20.0),
    padding: const EdgeInsets.all(10.0),
        
    child: Text('The Battle of containers',style : TextStyle(color:Colors.black)),
    width: 200.0,
    height: 100.0,
  ),
);
  }
}
