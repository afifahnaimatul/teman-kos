import 'package:flutter/material.dart';
import 'package:temenkos/Screen/TemanChat.dart';
import 'package:temenkos/Screen/blmtersedia.dart';
import 'package:temenkos/Screen/TemanKerja.dart';
import 'package:temenkos/Screen/profil.dart';

class MyHomePage extends StatefulWidget{
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
          children: <Widget>[
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("img/menu/daily.png"),
                  fit: BoxFit.fitHeight,
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.person),
                    iconSize: 30,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return Profil();
                      }));
                    },
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:<Widget>[
                        Text("Halo Anonim", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                        Text("Isi kegabutan dengan servis kami,", style: TextStyle(fontSize: 13)),
                      ]
                    )
                  ),
                  GridMenu(),
                ],
              )
          ),
        ],
      )
    );
  }
}

class Tampil extends StatelessWidget {
  Tampil ({this.teks});
  final String teks;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24.0, bottom: 12.0),
      child: Text(
        teks,
        style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class GridMenu extends StatefulWidget{
  @override
  _GridMenuState createState() => _GridMenuState();
}

class _GridMenuState extends State<GridMenu> {
  Card makeGridCell(String judul, String gambar, Widget path){
    return Card(
      elevation: 1.0,
      child: FlatButton(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          verticalDirection: VerticalDirection.down,
          children: <Widget>[
            Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            Text(judul, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Padding(padding:EdgeInsets.all(5)),
            Image.asset(gambar, fit: BoxFit.fitWidth, width: 50)
          ],
        ),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return path;
          }));
        }
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 2,
      childAspectRatio: 1,
      mainAxisSpacing: 1,
      crossAxisSpacing: 1,
      children: <Widget>[
        makeGridCell("Teman Kos", "img/menu/house.png", BlmTersedia()),
        makeGridCell("Teman Chat", "img/menu/chat.png", Homepage()),
        makeGridCell("Teman Hemat", "img/menu/saving.png", BlmTersedia()),
        makeGridCell("Teman Kerja", "img/menu/work.png", TKerja()),
      ],
    );
  }
}

