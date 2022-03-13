import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  const Labels({ Key? key, required this.route, required this.subTitle, required this.title }) : super(key: key);

  final String route;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title, style: const TextStyle(color: Colors.black54, fontSize: 15, fontWeight: FontWeight.w300)),
        const SizedBox(height: 10),
        GestureDetector(
          child: Text(subTitle, style: TextStyle(color: Colors.blue[600], fontSize: 18, fontWeight: FontWeight.bold
          ),),
          onTap: () {
            Navigator.pushReplacementNamed(context, route);
          },
        )
      ],
    );
  }
}