import 'package:flutter/cupertino.dart';
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
  List l = List.filled(9, "");
  int cnt = 0;

  add(int a) {
    if (cnt % 2 == 0) {
      l[a] = "x";
      cnt++;
    } else {
      l[a] = "0";
      cnt++;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MY GAME ")),
      body: Center(
        child: Container(
          height: 400,
          width: 400,
          color: Colors.indigoAccent,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () => add(0),
                      child: Container(
                        height: 100,
                        width: 100,
                        alignment: Alignment.center,
                        child: Text("${l[0]}"),
                        color: Colors.grey,
                      ),
                    ),
                    InkWell(
                      onTap: () => add(1),
                      child: Container(
                        height: 100,
                        width: 100,
                        alignment: Alignment.center,
                        child: Text("${l[1]}"),
                        color: Colors.grey,
                      ),
                    ),
                    InkWell(
                      onTap: () => add(2),
                      child: Container(
                        height: 100,
                        width: 100,
                        child: Text("${l[2]}"),
                        color: Colors.grey,
                        alignment: Alignment.center,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () => add(3),
                      child: Container(
                        height: 100,
                        width: 100,
                        alignment: Alignment.center,
                        child: Text("${l[3]}"),
                        color: Colors.grey,
                      ),
                    ),
                    InkWell(
                      onTap: () => add(4),
                      child: Container(
                        height: 100,
                        width: 100,
                        alignment: Alignment.center,
                        child: Text("${l[4]}"),
                        color: Colors.grey,
                      ),
                    ),
                    InkWell(
                      onTap: () => add(5),
                      child: Container(
                        height: 100,
                        width: 100,
                        alignment: Alignment.center,
                        color: Colors.grey,
                        child: Text("${l[5]}"),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () => add(6),
                      child: Container(
                        height: 100,
                        width: 100,
                        alignment: Alignment.center,
                        child: Text("${l[6]}"),
                        color: Colors.grey,
                      ),
                    ),
                    InkWell(
                      onTap: () => add(7),
                      child: Container(
                        height: 100,
                        width: 100,
                        alignment: Alignment.center,
                        color: Colors.grey,
                        child: Text("${l[7]}"),
                      ),
                    ),
                    InkWell(
                      onTap: () => add(8),
                      child: Container(
                        height: 100,
                        width: 100,
                        alignment: Alignment.center,
                        child: Text("${l[8]}"),
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: () {
               l =List.filled(9, "");
                setState(() {

                });
              }, child: Text("Reset"))
            ],
          ),
        ),
      ),
    );
  }
}
