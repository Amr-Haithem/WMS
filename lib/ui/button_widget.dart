import 'package:flutter/material.dart';

import '../constants/project_colors.dart';


class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;
  const ButtonWidget({
    Key? key,
    required this.text,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton(
    style: ElevatedButton.styleFrom(
      shape: const StadiumBorder(), //button shaped like a stadium
      onPrimary: Colors.white,
      primary: mainBlue,
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
    ),
    onPressed: onClicked,

    child: Text(
      text,
      style: const TextStyle(fontSize: 20),
    ),
  );
}
