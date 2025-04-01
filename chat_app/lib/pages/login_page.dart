import 'package:chat_app/widgets/boton_azul.dart';
import 'package:flutter/material.dart';

import 'package:chat_app/widgets/labels.dart';
import 'package:chat_app/widgets/logo.dart';
import 'package:chat_app/widgets/custom_input.dart';

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
            Logo(),
            _Form(),
            Labels(),
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

// Widget => Keep state and other things
class _Form extends StatefulWidget {
  const _Form({super.key});

  @override
  State<_Form> createState() => __FormState();
}

class __FormState extends State<_Form> {

  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40.0),
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: Column(
        children: <Widget>[
          // Email
          CustomInput(
            icon: Icons.mail_outline,
            placeholder: "Correo",
            keyboardType: TextInputType.emailAddress,
            textController: emailCtrl,
          ),
          // Password
          CustomInput(
            icon: Icons.lock_outline,
            placeholder: "Contraseña",
            keyboardType: TextInputType.text,
            textController: passCtrl,
            isPassword: true,
          ),
          // Button
          BotonAzul(
            onPressed: () {
              print(emailCtrl.text);
              print(passCtrl.text);
            },
            text: "Ingresar",
          )
        ],
      ),
    );
  }
}
