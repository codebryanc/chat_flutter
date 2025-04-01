
// Widget => Labels
import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  final String route;
  final String title;
  final String actionText;

  const Labels({
    super.key,
    required this.route,
    required this.title,
    required this.actionText
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // Title
        Text(title,
          style: TextStyle(
            color: Colors.black54,
            fontSize: 15.0,
            fontWeight: FontWeight.w300
          )
        ),
        // space
        SizedBox(height: 10.0),
        // New acount
        GestureDetector(
          onTap: () {
            Navigator.pushReplacementNamed(context, '/$route');
          },
          child: Text(actionText,
            style: TextStyle(
              color: Colors.blue[600],
              fontSize: 18.0,
              fontWeight: FontWeight.bold
            )
          ),
        ),
      ],
    );
  }
}