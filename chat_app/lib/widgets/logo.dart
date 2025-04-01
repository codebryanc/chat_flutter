// Widget => como no va a cambiar lo podemos dejar como stateless widget LOGO
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final String titulo;
  
  const Logo({
    super.key,
    required this.titulo
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 170.0,
        margin: const EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            Image(
              image: AssetImage('assets/tag-logo.png'),
              height: 120.0
            ),
            SizedBox(height: 20.0),
            Text(
              titulo,
              style: TextStyle(
                fontSize: 20.0,
              )
            ),
          ],
        )
      )
    );
  }
}