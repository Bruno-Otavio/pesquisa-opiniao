import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.onPressed,
    required this.text,
  });

  final Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextButton(
        onPressed: onPressed, 
        style: TextButton.styleFrom(
          backgroundColor: Colors.blue.shade900,
          padding: const EdgeInsets.symmetric(vertical: 20),
          minimumSize: const Size(double.infinity, double.minPositive),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          ),
        ),
        child: Text(text, style: const TextStyle(color: Colors.white),),
      ),
    );
  }
}

