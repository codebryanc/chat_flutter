import 'package:flutter/material.dart';

class BotonAzul extends StatelessWidget {
  
  final String text;
  final VoidCallback onPressed;

  const BotonAzul({
    super.key,
    required this.text,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 2,
        shadowColor: Colors.grey,
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        ),
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10)
      ),
      onPressed: onPressed,
      child: Container(
        width: double.infinity,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18
            )
          ),
        ),
      )
    );
  }
}