import 'package:flutter/material.dart';
import 'package:temenkos/Screen/daftar.dart';
import 'package:temenkos/Screen/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Teman Kos',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Login()
    );
  }
}

class Login extends StatelessWidget {
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
                  "Halo Gabuters.",
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
                Isi(icon: Icons.person, teks: "Nama", input: TextInputType.multiline),
                Isi(icon: Icons.person, teks: "Username", input: TextInputType.multiline),
                FlatButton(
                  child: Text(
                    "Belum memiliki akun? Daftar",
                    style: TextStyle(
                      fontFamily: 'Roboto-Regular',
                      fontSize: 14
                    ),
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return Daftar();
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
                          "Masuk",
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

class Isi extends StatelessWidget{
  Isi({this.icon, this.teks, this.input});
  final IconData icon;
  final String teks;
  final TextInputType input;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: TextField(
        cursorColor: Colors.green[400],
        keyboardType: input,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
          prefixIcon: Icon(icon, color: Colors.black54),
          hintText: teks,
          hintStyle: TextStyle(
            fontFamily: 'Roboto-Regular',
            color: Colors.black12)
        ),
      ),
    );
  }
}