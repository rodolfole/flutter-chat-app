import 'package:flutter/material.dart';

class Btn extends StatelessWidget {
  const Btn({ Key? key, required this.onPressed, required this.text }) : super(key: key);

  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: SizedBox(
        width: double.infinity,
        height: 55,
        child: Center(
          child: Text(text, style: const TextStyle(color: Colors.white, fontSize: 17 )),
        ),
      )
    );
  }
}