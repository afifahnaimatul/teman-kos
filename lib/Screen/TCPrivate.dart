// import 'package:flutter/material.dart';

// void main(){
//   runApp(MaterialApp(
//     title: 'Teman Kos',
//     home: CPrivate(),
//   ));
// }

// // class TCPrivate extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       child: Center(
// //         child: Text("hay"),
// //       )
// //     );
// //   }
// // }

// class CPrivate extends StatefulWidget {
//   _CPrivateState createState() => _CPrivateState();
// }

// class _CPrivateState extends State<CPrivate> with SingleTickerProviderStateMixin{

//   TabController controller;
//   @override
//   void initState() { 
//     controller = TabController(vsync: this, length: 2);
//     super.initState();
//   }

//   @override
//   void dispose() { 
//     controller.dispose();
//     super.dispose();
//   }

//   Widget _textComposer(){
//     return Container(
//       margin: EdgeInsets.symmetric(horizontal: 8.0),
//       child: TextField(
//         decoration: InputDecoration.collapsed(
//           hintText: "Ketikkan Sesuatu"
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return _textComposer();
//   }
// }