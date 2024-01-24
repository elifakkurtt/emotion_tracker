import 'package:flutter/material.dart';

class EmotionButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color borderColor;
  final Color textColor;

  const EmotionButton(
      {required this.onTap,
      required this.borderColor,
      required this.text,
      required this.textColor,
      super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: borderColor),
        ),
        child: Text(
          text,
          style: TextStyle(color: textColor, fontSize: 20),
        ),
      ),
    );
  }
}
