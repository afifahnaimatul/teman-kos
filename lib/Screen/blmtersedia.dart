import 'package:flutter/material.dart';

class BlmTersedia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Ups!",
              style: TextStyle(
                fontFamily: 'Roboto-Regular',
                fontSize: 72,
                fontWeight: FontWeight.bold,
                color: Colors.black38,
              ),
            ),
            Text(
              "Layanan Belum Tersedia.",
              style: TextStyle(
                fontFamily: 'Roboto-Regular',
                fontSize: 20,
                color: Colors.black38,
              ),
            ),
          ],
        )
      ),
    );
  }
}