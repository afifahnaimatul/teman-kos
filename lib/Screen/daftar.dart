import 'package:flutter/material.dart';
import 'package:temenkos/Screen/home.dart';
import 'package:temenkos/main.dart';

class Daftar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20)),
                Text(
                  "Daftar",
                  style: TextStyle(
                    fontFamily: 'Roboto-Black',
                    fontWeight: FontWeight.bold,
                    fontSize: 72
                  )
                ),
                Text(
                  "Masuk untuk eksplor lebih banyak",
                  style: TextStyle(
                    fontFamily: 'Roboto-Regular',
                    fontSize: 14
                  )
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20)),
                Isi(icon: Icons.person, teks: "Nama"),
                Isi(icon: Icons.person, teks: "Username"),
                Isi(icon: Icons.phone, teks: "Nomor Telepon", input: TextInputType.phone),
                Isi(icon: Icons.email, teks: "Email", input: TextInputType.emailAddress),
                Isi(icon: Icons.lock, teks: "Password"),
                FlatButton(
                  child: Text(
                    "Sudah memiliki akun? Masuk",
                    style: TextStyle(
                        fontFamily: 'Roboto-Regular',
                        fontSize: 14
                      ),
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return Login();
                    }));
                  },
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      height: 50,
                      width: 100,
                      child: RaisedButton(
                        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                        color: Colors.green[400],
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return MyHomePage();
                          }));
                        },
                        child: Text(
                          "Daftar",
                          style: TextStyle(
                            fontFamily: 'Roboto-Regular',
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      )
    );
  }
}