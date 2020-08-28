import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The battle of containers',
      debugShowCheckedModeBanner: false,
     
      home: Home(title: 'The battle of containers'),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHome createState() => _MyHome();
}

class _MyHome extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: ClipPath(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            alignment:Alignment.center,
            color: Colors.blue,
          ),
          clipper: CustomPath(),
        ),
      ),
    );
  }
}

class CustomPath extends CustomClipper<Path> {
  final arcHeight = 100.0;
  final radius = 20.0;
  
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width, 0.0);
    path.lineTo(size.width, size.height);
    path.arcToPoint(Offset(size.width, size.height - arcHeight),
        radius: Radius.circular(radius));
    path.lineTo(size.width, size.height - arcHeight / 2);
    path.lineTo(0, size.height - arcHeight / 2);
    path.lineTo(0,size.height- arcHeight);
     path.arcToPoint(Offset(0, size.height),
        radius: Radius.circular(radius));

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
