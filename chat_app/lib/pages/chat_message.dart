import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  final String text;
  final String uid;

  const ChatMessage({
    super.key,
    required this.text,
    required this.uid});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: uid == '123'
        ? _myMessage()
        : _notMyMessage(),
    );
  }

  _myMessage() {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.only(bottom: 5, left: 50, right: 5),
        decoration: BoxDecoration(
          color: Color(0xff4D9EF6),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20)
          )
        ),
        child: Text(text, style: TextStyle(color: Colors.white))
      ),
    );
  }

  _notMyMessage() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.only(bottom: 5, left: 5, right: 50),
        decoration: BoxDecoration(
          color: Color(0xffE4E5E8),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20)
          )
        ),
        child: Text(text, style: TextStyle(color: Colors.black87))
      ),
    );
  }
}
