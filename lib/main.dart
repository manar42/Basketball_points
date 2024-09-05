import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

// ignore: must_be_immutable
class PointsCounter extends StatefulWidget {
  PointsCounter({super.key});

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamApoints = 0;

  int teamBpoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text(
            'Points Counter',
            style: TextStyle(fontSize: 30),
          ),
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      'Team A',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                    Text(
                      '$teamApoints',
                      style: const TextStyle(
                        fontSize: 170,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(160, 60),
                        backgroundColor: Colors.green,
                      ),
                      onPressed: () {
                        setState(() {
                          teamApoints++;
                        });
                        print(teamApoints);
                      },
                      child: const Text('Add 1 point',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(160, 60),
                        backgroundColor: Colors.green,
                      ),
                      onPressed: () {
                        setState(() {
                          teamApoints += 2;
                        });
                        print(teamApoints);
                      },
                      child: const Text('Add 2 point',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(160, 60),
                        backgroundColor: Colors.green,
                      ),
                      onPressed: () {
                        setState(() {
                          teamApoints += 3;
                        });
                        print(teamApoints);
                      },
                      child: const Text('Add 3 point',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                    )
                  ],
                ),
                Column(
                  children: [
                    const Text(
                      'Team B',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                    Text(
                      '$teamBpoints',
                      style: const TextStyle(
                        fontSize: 170,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(160, 60),
                        backgroundColor: Colors.green,
                      ),
                      onPressed: () {
                        setState(() {
                          teamBpoints++;
                        });
                        print(teamBpoints);
                      },
                      child: const Text('Add 1 point',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(160, 60),
                        backgroundColor: Colors.green,
                      ),
                      onPressed: () {
                        setState(() {
                          teamBpoints += 2;
                        });
                        print(teamBpoints);
                      },
                      child: const Text('Add 2 point',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(160, 60),
                        backgroundColor: Colors.green,
                      ),
                      onPressed: () {
                        setState(() {
                          teamBpoints += 3;
                        });
                        print(teamBpoints);
                      },
                      child: const Text('Add 3 point',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(160, 60),
                backgroundColor: Colors.green,
              ),
              onPressed: () {
                setState(() {
                  teamApoints = 0;
                  teamBpoints = 0;
                });
                print(teamApoints);
                print(teamBpoints);
              },
              child: const Text('Reset',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
