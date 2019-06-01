import 'package:flutter/material.dart';

class Job extends StatefulWidget {
  @override
  _JobState createState() => _JobState();
}

class _JobState extends State<Job> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        children: <Widget>[
          Container(
            height: 8.0,
          ),
          Text(
            'Suggestion based on your choice.',
            style: TextStyle(
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 16.0),
          ),
          ListView(
            children: <Widget>[
              Container(width: 24.0,height: 24.0,color: Colors.white,)
            ],
            scrollDirection: Axis.vertical,
          ),
        ],
      ),
    );
  }

  Widget _jobCard(String jobTitle, String location, IconData icon) {
    return Card(
      child: Container(
        height: 128.0,
        child: Row(
          children: <Widget>[
            Column(
              children: <Widget>[Icon(icon,color: Colors.white,)],
            ),
          ],
        ),
      ),
    );
  }
}
