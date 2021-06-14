import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';
  @override
  Widget build(BuildContext context) {
    final profile = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(24.0),
        child: CircleAvatar(
          radius: 80.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('images/1.png'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Welcome',
        style: TextStyle(fontSize: 30.0, color: Colors.white),
      ),
    );

    final paragraph = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'This is the default homepage.',
        style: TextStyle(fontSize: 20.0, color: Colors.white),
      ),
    );
    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blueAccent,
            Colors.lightGreenAccent,
          ],
        ),
      ),
      child: Column(
        children: <Widget>[profile, welcome, paragraph],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}
