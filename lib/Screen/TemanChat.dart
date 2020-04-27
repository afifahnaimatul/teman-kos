import 'package:flutter/material.dart';
import 'package:temenkos/chatmessage.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          tooltip: 'Back',
          onPressed: Navigator.of(context).pop,
        ),
        title: Text("Anonim"),
      ),
      body: ChatScreen()
    ); 
  }
}

class ChatScreen extends StatefulWidget {
  @override
  State createState() => ChatScreenState();
}

class ChatScreenState extends State<ChatScreen> {
  final TextEditingController _chatController = TextEditingController();
  final List<ChatMessage> _messages = <ChatMessage>[];

  void _handleSubmit(String text) {
    _chatController.clear();
      ChatMessage message = ChatMessage(
        text: text
    );
      
    setState(() {
      _messages.insert(0, message);
    });
  }

  void popUp(String choice){
    if(choice == MenuChat.akhiri){
      Center(
        child: Card(
          child: Text("Chat telah diakhiri.")
        ),
      );
    }
  }

  Widget _chatEnvironment (){
    return IconTheme(
      data: IconThemeData(color: Colors.black),
          child: Container(
        margin: const EdgeInsets.symmetric(horizontal:8.0),
        child: Row(
          children: <Widget>[
            PopupMenuButton<String>(
              onSelected: popUp,
              icon: Icon(Icons.add_circle),
              itemBuilder: (BuildContext context){
                return MenuChat.pilih.map((String choice){
                  return PopupMenuItem<String>(
                    value: choice,
                    child: Text(choice),
                  );
                }).toList();
              },
            ),
            Flexible(
              child: TextField(
                decoration: InputDecoration.collapsed(
                  hintText: "Ketikkan Sesuatu .. ",
                  // border: OutlineInputBorder(borderRadius: BorderRadius.circular(32))
                ),
                controller: _chatController,
                onSubmitted: _handleSubmit,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              child: IconButton(
                icon: Icon(Icons.send),
                
                onPressed: ()=> _handleSubmit(_chatController.text),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          Flexible(
            child: ListView.builder(
              padding: EdgeInsets.all(8.0),
              reverse: true,
              itemBuilder: (_, int index) => _messages[index],
              itemCount: _messages.length,
            ),
          ),
          Divider(
            height: 1.0,
          ),
          Container(decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
          ),
          child: _chatEnvironment())
        ],
      );
  }
}

class MenuChat{
  static String akhiri = "Akhiri Chat";

  static List<String> pilih = <String>[
    akhiri,
  ];
}