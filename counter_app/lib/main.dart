import 'package:flutter/material.dart';

void main() {
  runApp(CounterPoints());
}

class CounterPoints extends StatefulWidget {
  @override
  State<CounterPoints> createState() => _CounterPointsState();
}

class _CounterPointsState extends State<CounterPoints> {
  int teamAPoinits = 0;

  int teamBPoinits = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Points Counter', style: TextStyle(color: Colors.white)),
        ),
        //main column
        body: Column(
          children: [
            Spacer(flex: 1),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // first column
                Column(
                  children: [
                    Text(
                      'Team A',
                      style: TextStyle(fontSize: 30, color: Colors.black),
                    ),

                    Text('$teamAPoinits', style: TextStyle(fontSize: 150)),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      onPressed: () {
                        setState(() {
                          teamAPoinits++;
                        });
                      },
                      child: Text(
                        'add 1 point',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      onPressed: () {
                        setState(() {
                          teamAPoinits += 2;
                        });
                      },
                      child: Text(
                        'Add 2 point',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      onPressed: () {
                        setState(() {
                          teamAPoinits += 3;
                        });
                      },
                      child: Text(
                        'Add 3 point',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),
                  ],
                ),
                // divider
                SizedBox(
                  height: 500,
                  child: VerticalDivider(
                    color: Colors.grey,
                    indent: 14,
                    // endIndent: 0,
                    // thickness: 30,
                  ),
                ),

                // second column
                Column(
                  children: [
                    Text(
                      'Team B',
                      style: TextStyle(fontSize: 30, color: Colors.black),
                    ),

                    Text('$teamBPoinits', style: TextStyle(fontSize: 150)),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      onPressed: () {
                        setState(() {
                          teamBPoinits++;
                        });
                      },
                      child: Text(
                        'Add 1 point',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),
                    const SizedBox(height: 16),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      onPressed: () {
                        setState(() {
                          teamBPoinits += 2;
                        });
                      },
                      child: Text(
                        'Add 2 point',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),
                    const SizedBox(height: 16),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      onPressed: () {
                        setState(() {
                          teamBPoinits += 3;
                        });
                      },
                      child: Text(
                        'Add 3 point',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(flex: 2),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                minimumSize: Size(150, 50),
              ),
              onPressed: () {
                setState(() {
                  teamAPoinits = 0;
                  teamBPoinits = 0;
                });
              },
              child: Text(
                'Rest',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
