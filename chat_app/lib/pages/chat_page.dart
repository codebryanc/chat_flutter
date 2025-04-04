import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:chat_app/pages/chat_message.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _textController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  bool _isWriting = false;
  List<ChatMessage> _messages = [
    ChatMessage(text: 'Hola mundo', uid: '123'),
    ChatMessage(text: 'Hola mundo asjdlñkjsadlkñajjñflkjadsñlfkjadsñlfjñlk djsafñljadslñfjdslñjfdañslj', uid: '123'),
    ChatMessage(text: 'Hola mundo', uid: '123'),
    ChatMessage(text: 'Hola mundo', uid: '123s'),
    ChatMessage(text: 'Hola mundo', uid: '123s'),
    ChatMessage(text: 'Hola mundo', uid: '123s'),
  ];

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
                itemCount: _messages.length,
                itemBuilder: (_, i) => _messages[i],
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
                onChanged: (textValue) {
                  setState(() {
                    if (textValue.isNotEmpty) {
                      _isWriting = true;
                    } else {
                      _isWriting = false;
                    }
                  });
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
              child: Platform.isIOS
                ? CupertinoButton(
                    onPressed:
                     _isWriting ?
                      () => _handleSummit(_textController.text) :
                      null,
                    child: Text(
                      'Enviar',
                      style: TextStyle(color: _isWriting ? Colors.blueAccent[400] : Colors.grey),
                    ),
                  )
                : Container(
                  margin: EdgeInsets.symmetric(horizontal: 4.0),
                  child: IconTheme(
                    data: IconThemeData(color: Colors.blueAccent[400]),
                    child: IconButton(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      icon: Icon(Icons.send),
                      onPressed: _isWriting ?
                        () => _handleSummit(_textController.text) :
                        null,
                    ),
                  ),
                ),
            )
          ],
        ),
      ),
    );
  }

  _handleSummit(String text) {
    _textController.clear();
    _focusNode.requestFocus();

    final newMessage = ChatMessage(
      uid: '123',
      text: text
    );
    _messages.insert(0, newMessage);
    
    setState(() {
      _isWriting = false;
    });

  }
}