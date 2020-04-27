import 'package:flutter/material.dart';
import 'package:temenkos/Screen/tk__search.dart';
import 'package:temenkos/aturfilter.dart';

class TKerja extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          tooltip: 'Back',
          onPressed: Navigator.of(context).pop,
        ),
        title: Text("Teman Kerja"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return TKSearch();
              }));
            },
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Image.asset("img/menu/work.png"),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CardSearch(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Sort(icon: Icons.sort, teks: "Tampilkan Sesuai"),
                    Filter(icon: Icons.filter_list, teks: "Filter")
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  CScrollKerja(),
                  CScrollKerja(),
                  CScrollKerja(),
                  CScrollKerja(),
                  CScrollKerja(),
                  Padding(padding: EdgeInsets.only(bottom: 20))
                ],
              )
            ],
          ),
        ]
      ),
    );
  }
}

class CardSearch extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Card(
        child: TextField(
          decoration:InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            suffixIcon: Icon(Icons.search),
            border: InputBorder.none,
            hintText: 'Cari Pekerjaan',
          )
        ),
      ),
    );
  }
}

class Sort extends StatelessWidget{
Sort({this.icon, this.teks, this.choice});
final IconData icon;
final String teks;
final String choice;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: popUp,
      itemBuilder: (BuildContext context){
        return Atur.pilih.map((String choice){
          return PopupMenuItem<String>(
            value: choice,
            child: Text(choice),
          );
        }).toList();
      },
      child: Row(
        children: <Widget>[
          Padding(padding: EdgeInsets.symmetric(vertical: 25.0)),
          Icon(icon),
          Text(teks),
        ]
      )
    );
  }

  void popUp(String choice){
    if(choice == Atur.popularitas){
      print('Popularitas is Working Fine');
    } else if(choice == Atur.atoz){
      print('A to Z is Working Fine');
    } else if(choice == Atur.ztoa){
      print('Z to A is Working Fine');
    } else if(choice == Atur.tinggirendah){
      print('Tinggi ke Rendah is Working Fine');
    } else if(choice == Atur.rendahtinggi){
      print('Rendah ke Tinggi is Working Fine');
    } else if(choice == Atur.baru){
      print('Pekerjaan Baru is Working Fine');
    }
  }

}

class Filter extends StatelessWidget{
Filter({this.icon, this.teks, this.choice});
final IconData icon;
final String teks;
final String choice;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: popUp,
      itemBuilder: (BuildContext context){
        return FilterList.pilih2.map((String choice){
          return PopupMenuItem<String>(
            value: choice,
            child: Text(choice),
          );
        }).toList();
      },
      child: Row(
        children: <Widget>[
          Padding(padding: EdgeInsets.symmetric(vertical: 25.0)),
          Icon(icon),
          Text(teks),
        ]
      )
    );
  }
  
  void popUp(String choice){
    if(choice == FilterList.gaji){
      print('Gaji is Working Fine');
    } else if(choice == FilterList.lokasi){
      print('Lokasi is Working Fine');
    } else if(choice == FilterList.fulltime){
      print('Full Time is Working Fine');
    } else if(choice == FilterList.parttime){
      print('Part Time is Working Fine');
    } else if(choice == FilterList.magang){
      print('Magang is Working Fine');
    }
  }
}

