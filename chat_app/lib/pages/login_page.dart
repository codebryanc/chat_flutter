import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _Logo(),
            _Form(),
            _Labels(),
            Text('Términos y condiciones de uso',
              style: TextStyle(
                fontWeight: FontWeight.w200
              )
            ),
          ],
        ),
      )
    );
  }
}

// Widget => como no va a cambiar lo podemos dejar como stateless widget LOGO
class _Logo extends StatelessWidget {
  const _Logo();

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
            Text("Messenger",
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

// Widget => Keep state and other things
class _Form extends StatefulWidget {
  const _Form({super.key});

  @override
  State<_Form> createState() => __FormState();
}

class __FormState extends State<_Form> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(),
        TextField(),
        ElevatedButton(onPressed: () {}, child: Text("Login")),
      ],
    );
  }
}

// Widget => Labels
class _Labels extends StatelessWidget {
  const _Labels({super.key});

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