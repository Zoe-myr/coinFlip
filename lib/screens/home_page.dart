import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String studentName = "Sa St";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text(studentName + "'s Coin Flip App"),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Colors.teal.shade100,
                fontSize: 40.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "to my Coin Flip app",
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Colors.teal.shade100,
                fontSize: 20.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  //add border radius here
                  child: Image.asset('images/ques_mark_blue.jpg'),
                  //add image location here
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  print('Flip coin');
                },
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    //add border radius here
                    child: Image.asset('images/flip_coin.png'),
                  ),
                ),
              ),
            ),
            Text(
              'Heads = 3  :  Tails = 5',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Colors.teal.shade100,
                fontSize: 20.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                shape: StadiumBorder(
                  side: BorderSide(color: Colors.white, width: 2),
                ),
              ),
              onPressed: () {
                print('Start over');
              },
              child: Text(
                'Start Over',
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Pacifico',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.announcement,
                  color: Colors.teal.shade300,
                ),
                title: Text(
                  'Click the hand to start the game \nClick Start Over to reset the counts',
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 15.0,
                  ),
                ),
              ),
            ),
          ], // children array
        ),
      ),
    );
  } //build
}
