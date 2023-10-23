import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counterA = 0;
  int counterB = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          'Counter Points',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    children: [
                      const Text(
                        'Team A',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        '$counterA',
                        style: const TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            counterA++;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          fixedSize: const Size(180, 50),
                        ),
                        child: const Text(
                          'Add 1 point',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            counterA += 2;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          fixedSize: const Size(180, 50),
                        ),
                        child: const Text(
                          'Add 2 points',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            counterA += 3;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          fixedSize: const Size(180, 50),
                        ),
                        child: const Text(
                          'Add 3 points',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const VerticalDivider(
                    color: Colors.black,
                    thickness: 1,
                  ),
                  Column(
                    children: [
                      const Text(
                        'Team B',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        '$counterB',
                        style: const TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            counterB++;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          fixedSize: const Size(180, 50),
                        ),
                        child: const Text(
                          'Add 1 point',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            counterB += 2;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          fixedSize: const Size(180, 50),
                        ),
                        child: const Text(
                          'Add 2 points',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            counterB += 3;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          fixedSize: const Size(180, 50),
                        ),
                        child: const Text(
                          'Add 3 points',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counterA = 0;
                  counterB = 0;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                fixedSize: const Size(180, 50),
              ),
              child: const Text(
                'Reset',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
