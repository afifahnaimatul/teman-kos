import 'package:flutter/material.dart';
const String _name = "Anonymous";

class ChatMessage extends StatelessWidget {
  final String text;

// constructor to get text from textfield
  ChatMessage({
    this.text
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 16.0, right: 16),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              // Text(_name, style: Theme.of(context).textTheme.subhead),
              Container(
                margin: EdgeInsets.only(top: 5.0, right: 16),
                child: Text(text),
              )
            ],
          )
        ],
      )
    );
  }
}