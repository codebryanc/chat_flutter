import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _textController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Column(
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Colors.blueAccent[100],
              child: Text('Te', style: TextStyle(fontSize: 12)),
              maxRadius: 14,
            ),
            SizedBox(height: 3),
            Text('Melisa Florez', style: TextStyle(color: Colors.black87, fontSize: 14))
          ],
        )
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            
            Flexible(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemBuilder: (_, i) => Text('$i'),
                reverse: true,
              ),
            ),

            Divider(
              height: 1,
            ),

            // Input chat
            _inputChat()
          ],
        )
      )
    );
  }

  Widget _inputChat() {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        color: Colors.white,
        height: 100,
        child: Row(
          children: <Widget>[
            Flexible(
              child: TextField(
                controller: _textController,
                onSubmitted: _handleSummit,
                onChanged: (_) {
                  // TODO:Cuando hay un valor para poder postear
                },
                decoration: InputDecoration.collapsed(
                  hintText: 'Enviar mensaje',
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.black54)
                ),
                focusNode: _focusNode,
              ),
            ),
            // send button
            Container(
              margin: EdgeInsets.symmetric(horizontal: 4.0),
              child: !Platform.isIOS
                ? CupertinoButton(
                  child: Text('Enviar', style: TextStyle(color: Colors.blueAccent[400])),
                  onPressed: () {},
                )
                : Container(
                  margin: EdgeInsets.symmetric(horizontal: 4.0),
                  child: IconButton(
                    icon: Icon(Icons.send), color: Colors.blueAccent[400],
                    onPressed: () {},
                  ),
                ),
            )
          ],
        ),
      ),
    );
  }

  _handleSummit(String text) {
    print(text);
    _textController.clear();
    _focusNode.requestFocus();
  }
}