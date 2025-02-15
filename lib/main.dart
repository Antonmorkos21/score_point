import 'package:flutter/material.dart';

void main() {
  runApp(score_points());
}

class score_points extends StatefulWidget {
  @override
  State<score_points> createState() => _score_pointsState();
}

class _score_pointsState extends State<score_points> {
  int teamA = 0;
  int teamB = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.grey[800],
          title: Text(
            "Score points",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "Team 1",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "$teamA",
                      style: TextStyle(
                          color: Colors.lightBlue[400],
                          fontSize: 120,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          fixedSize: Size(80, 40),
                        ),
                        onPressed: () {
                          setState(() {
                            teamA++;
                          });
                        },
                        child: Text(
                          " + ",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )),
                    SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          fixedSize: Size(80, 40),
                        ),
                        onPressed: () {
                          setState(() {
                            teamA += 2;
                          });
                        },
                        child: Text(
                          "+2",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )),
                    SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          fixedSize: Size(80, 40),
                        ),
                        onPressed: () {
                          setState(() {
                            teamA += 3;
                          });
                        },
                        child: Text(
                          "+3",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "vs",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 60,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 150,
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Team 2",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "$teamB",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 120,
                          fontFamily: 'Share Tech Mono',
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          fixedSize: Size(80, 40),
                        ),
                        onPressed: () {
                          setState(() {
                            teamB++;
                          });
                        },
                        child: Text(
                          " + ",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )),
                    SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          fixedSize: Size(80, 40),
                        ),
                        onPressed: () {
                          setState(() {
                            teamB += 2;
                          });
                        },
                        child: Text(
                          "+2",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )),
                    SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          fixedSize: Size(80, 40),
                        ),
                        onPressed: () {
                          setState(() {
                            teamB += 3;
                          });
                        },
                        child: Text(
                          "+3",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  fixedSize: Size(150, 40),
                ),
                onPressed: () {
                  setState(() {
                    teamA = 0;
                    teamB = 0;
                  });
                },
                child: Text(
                  "Reset",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                )),
          ],
        ),
      ),
    );
  }
}
