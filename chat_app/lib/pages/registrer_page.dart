import 'package:flutter/material.dart';

import 'package:chat_app/widgets/labels.dart';
import 'package:chat_app/widgets/logo.dart';
import 'package:chat_app/widgets/custom_input.dart';
import 'package:chat_app/widgets/boton_azul.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Logo(titulo: "Registro",),
                _Form(),
                // Information
                Labels(
                  route: 'login',
                  title: "Ya tienes cuenta",
                  actionText: "Iniciar sesión"
                ),
                // Info
                Text('Términos y condiciones de uso',
                  style: TextStyle(
                    fontWeight: FontWeight.w200
                  )
                ),
              ],
            ),
          ),
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

  final nameCtrl = TextEditingController();

  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40.0),
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: Column(
        children: <Widget>[
        
          // Name
          CustomInput(
            icon: Icons.perm_identity,
            placeholder: "Nombre",
            keyboardType: TextInputType.text,
            textController: nameCtrl,
          ),
        
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
