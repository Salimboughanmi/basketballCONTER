import 'package:flutter/material.dart';

void main() {
  runApp(pointsCounter());
}

class pointsCounter extends StatefulWidget {
  @override
  State<pointsCounter> createState() => _pointsCounterState();
}

class _pointsCounterState extends State<pointsCounter> {
  int TeamAPt = 0;

  int TeamBPt = 0;

  void addTwoPts() {
    TeamAPt = TeamAPt + 3;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar:
          AppBar(title: Text("Points Counter"), backgroundColor: Colors.orange),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    "TEAM A",
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    "$TeamAPt",
                    style: TextStyle(fontSize: 150),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(100, 30),
                      ),
                      onPressed: (() {
                        TeamAPt++;
                        setState(() {});
                      }),
                      child: Text("Add 1 pt")),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(100, 30),
                          textStyle: TextStyle(color: Colors.black)),
                      onPressed: ((() {
                        setState(() {
                          TeamAPt += 2;
                        });
                      })),
                      child: Text("Add 2 pts")),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(100, 30),
                      ),
                      onPressed: ((() {
                        setState(() {
                          TeamAPt += 3;
                        });
                      })),
                      child: Text("Add 3 pt3")),
                ],
              ),
              Container(
                height: 500,
                child: VerticalDivider(
                  thickness: 1,
                ),
              ),
              Column(
                children: [
                  Text(
                    "TEAM B",
                    style: TextStyle(fontSize: 30),
                  ),
                  Text("$TeamBPt", style: TextStyle(fontSize: 150)),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(100, 30),
                      ),
                      onPressed: ((() {
                        setState(() {
                          TeamBPt += 1;
                        });
                      })),
                      child: Text("Add 1 pt")),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(100, 30),
                          textStyle: TextStyle(color: Colors.black)),
                      onPressed: ((() {
                        setState(() {
                          TeamBPt += 2;
                        });
                      })),
                      child: Text("Add 2 pts")),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(100, 30),
                      ),
                      onPressed: ((() {
                        setState(() {
                          TeamBPt += 3;
                        });
                      })),
                      child: Text("Add 3 pt3"))
                ],
              )
            ],
          ),
          ElevatedButton(
            onPressed: ((() {
              setState(() {
                TeamAPt = 0;
                TeamBPt = 0;
              });
            })),
            child: Text("Reset"),
          ),
        ],
      ),
    ));
  }
}
