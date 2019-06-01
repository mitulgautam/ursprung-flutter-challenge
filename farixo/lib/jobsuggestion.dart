import 'package:flutter/material.dart';

class JobSuggestion extends StatefulWidget {
  @override
  _JobSuggestionState createState() => _JobSuggestionState();
}

class _JobSuggestionState extends State<JobSuggestion> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _bubble('Android', Colors.blue),
              _bubble('Java Developer', Colors.green),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _bubble('Flutter Developer', Colors.orange),
              _bubble('Pyhton', Colors.blue),
              _bubble('Dart', Colors.yellow),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _bubble('Android', Colors.purple),
              _bubble('Java Developer', Colors.pink),
            ],
          ),
        ],
      ),
    );
  }

  Widget _bubble(String text, Color color) {
    return Card(
      color: Colors.black,
      elevation: 8.0,
      child: Container(
        margin: EdgeInsets.only(left: 4.0, top: 8.0),
        height: 64.0,
        padding: EdgeInsets.all(16.0),
        child: Text(
          text,
          style: TextStyle(fontSize: 24.0,color: Colors.white,fontFamily: 'Quicksand'),
        ),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(24.0),
        ),
      ),
    );
  }
}
