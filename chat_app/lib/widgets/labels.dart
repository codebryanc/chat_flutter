
// Widget => Labels
import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  const Labels({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // Title
        Text("No tienes cuenta", 
          style: TextStyle(
            color: Colors.black54,
            fontSize: 15.0,
            fontWeight: FontWeight.w300
          )
        ),
        // space
        SizedBox(height: 10.0),
        // New acount
        Text("Crear cuenta", 
          style: TextStyle(
            color: Colors.blue[600],
            fontSize: 18.0,
            fontWeight: FontWeight.bold
          )
        ),
      ],
    );
  }
}