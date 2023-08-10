import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: A1_Tic(),
  ));
}

class A1_Tic extends StatefulWidget {
  const A1_Tic({super.key});

  @override
  State<A1_Tic> createState() => _A1_TicState();
}

class _A1_TicState extends State<A1_Tic> {
  List l = List.filled(9, "");
  int cnt = 0;

  fun(int a) {
    if (cnt % 2 == 0) {
      if (l[a] == "") {
        l[a] = "X";
        cnt++;
      }
    } else {
      if (l[a] == "") {
        l[a] = "O";
        cnt++;
      }
    }
    win();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("TIC TAC TOE"),
        ),
        body: Center(
          child: Container(
            height: 350,
            width: 350,
            color: CupertinoColors.activeOrange,
            child: Column(
              children: [
                Text("$ans"),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () => fun(0),
                        child: Container(
                          alignment: Alignment.center,
                          height: 100,
                          width: 100,
                          child: Text(
                            "${l[0]}",
                            style: TextStyle(fontSize: 25),
                          ),
                          color: CupertinoColors.inactiveGray,
                        ),
                      ),
                      InkWell(
                        onTap: () => fun(1),
                        child: Container(
                          alignment: Alignment.center,
                          height: 100,
                          child: Text(
                            "${l[1]}",
                            style: TextStyle(fontSize: 25),
                          ),
                          width: 100,
                          color: CupertinoColors.inactiveGray,
                        ),
                      ),
                      InkWell(
                        onTap: () => fun(2),
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "${l[2]}",
                            style: TextStyle(fontSize: 25),
                          ),
                          height: 100,
                          width: 100,
                          color: CupertinoColors.inactiveGray,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () => fun(3),
                        child: Container(
                          child: Text(
                            "${l[3]}",
                            style: TextStyle(fontSize: 25),
                          ),
                          height: 100,
                          alignment: Alignment.center,
                          width: 100,
                          color: CupertinoColors.inactiveGray,
                        ),
                      ),
                      InkWell(
                        onTap: () => fun(4),
                        child: Container(
                          child: Text("${l[4]}"),
                          height: 100,
                          width: 100,
                          alignment: Alignment.center,
                          color: CupertinoColors.inactiveGray,
                        ),
                      ),
                      InkWell(
                        onTap: () => fun(5),
                        child: Container(
                          child: Text("${l[5]}"),
                          height: 100,
                          width: 100,
                          alignment: Alignment.center,
                          color: CupertinoColors.inactiveGray,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () => fun(6),
                        child: Container(
                          child: Text("${l[6]}"),
                          height: 100,
                          alignment: Alignment.center,
                          width: 100,
                          color: CupertinoColors.inactiveGray,
                        ),
                      ),
                      InkWell(
                        onTap: () => fun(7),
                        child: Container(
                          child: Text("${l[7]}"),
                          height: 100,
                          alignment: Alignment.center,
                          width: 100,
                          color: CupertinoColors.inactiveGray,
                        ),
                      ),
                      InkWell(
                        onTap: () => fun(8),
                        child: Container(
                          child: Text("${l[8]}"),
                          height: 100,
                          alignment: Alignment.center,
                          width: 100,
                          color: CupertinoColors.inactiveGray,
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      l = List.filled(9, "");
                      ans = "";
                      setState(() {});
                    },
                    child: Text("RESET"))
              ],
            ),
          ),
        ));
  }

  win() {
    if (l[0] == "X" && l[1] == "X" && l[2] == "X" ||
        l[3] == "X" && l[4] == "X" && l[5] == "X" ||
        l[6] == "X" && l[7] == "X" && l[8] == "X" ||
        l[0] == "X" && l[3] == "X" && l[6] == "X" ||
        l[1] == "X" && l[4] == "X" && l[7] == "X" ||
        l[2] == "X" && l[5] == "X" && l[8] == "X" ||
        l[0] == "X" && l[4] == "X" && l[8] == "X" ||
        l[2] == "X" && l[4] == "X" && l[6] == "X") {
      ans = "X is WIN";
    } else if (l[0] == "O" && l[1] == "O" && l[2] == "O" ||
        l[3] == "O" && l[4] == "O" && l[5] == "O" ||
        l[6] == "O" && l[7] == "O" && l[8] == "O" ||
        l[0] == "O" && l[3] == "O" && l[6] == "O" ||
        l[1] == "O" && l[4] == "O" && l[7] == "O" ||
        l[2] == "O" && l[5] == "O" && l[8] == "O" ||
        l[0] == "O" && l[4] == "O" && l[8] == "O" ||
        l[2] == "O" && l[4] == "O" && l[6] == "O") {
      ans = "O is WIN";
    }

    setState(() {});
  }

  String ans = "";
}
