import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({
    Key? key,
    required this.result,
    required this.title,
  }) : super(key: key);

  final double result;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '$title',
          style: TextStyle(fontSize: 15),
        ),
        Padding(padding: EdgeInsets.all(10)),
        Text(
          '$result',
          style: TextStyle(fontSize: 30),
        ),
      ],
    );
  }
}
