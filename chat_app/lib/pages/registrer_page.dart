
import 'package:flutter/material.dart';

class RegistrerPage extends StatelessWidget {
  const RegistrerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registrer'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Registrer Page'),
      ),
    );
  }
}