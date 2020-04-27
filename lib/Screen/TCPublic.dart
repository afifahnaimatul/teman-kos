import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: 'Teman Kos',
    home: TCPublic(),
  ));
}

class TCPublic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("hallloo"),
      )
    );
  }
}