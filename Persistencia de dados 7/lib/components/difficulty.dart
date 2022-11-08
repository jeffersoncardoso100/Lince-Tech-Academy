
// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';


class Difficulty extends StatelessWidget {

  final int dificultyLevel;

  const Difficulty({
    required this.dificultyLevel,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          size: 15,
          color: (dificultyLevel >= 1) ? Colors.black54: Colors.white,
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (dificultyLevel >= 2) ?Colors.black54 : Colors.white,
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (dificultyLevel >= 3) ? Colors.black54 : Colors.white,
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (dificultyLevel >= 4) ? Colors.black54 : Colors.white,
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (dificultyLevel >= 5) ? Colors.black54: Colors.white,
        ),
      ],
    );
  }
}