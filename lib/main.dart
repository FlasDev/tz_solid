import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: new ScaffoldColorWidget()
    );
  }
}

class ScaffoldColorWidget extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => ScaffoldColorWidgetState();

}

class ScaffoldColorWidgetState extends State<ScaffoldColorWidget>{

  Color color;
  static const List<Color> colors = const <Color>[
    const Color(0xFFFFC100),
    const Color(0xFF91FAFF),
    const Color(0xFF00D1FF),
    const Color(0xFF00BCFF),
    const Color(0xFF009BEE),
  ];

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: (){
        setState(() {
          var random = new Random();
          int randomNumberColor = random.nextInt(colors.length);
          color = colors[randomNumberColor];
        });
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("SOLID"),
        ),
        backgroundColor: color,
        body: Center(
          child: new GestureDetector(
            onTap: () {
              setState(() {
                var random = new Random();
                int randomNumberColor = random.nextInt(colors.length);
                color = colors[randomNumberColor];
              });
            },
            child: new Text("Hello Solid Software"),
          ),
        ),
      ),
    );
  }
}


