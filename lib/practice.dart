import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: sk(),
  ));
}

class sk extends StatefulWidget {
  const sk({super.key});

  @override
  State<sk> createState() => _skState();
}

class _skState extends State<sk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("MY GAME")),
        body: Center(child: Container(height: 450,
          width:450 ,
          color: Colors.white,

        ),));
  }
}
