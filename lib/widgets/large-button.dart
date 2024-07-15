import 'package:flutter/material.dart';

class LargeButton extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  const LargeButton({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 56,
        width: 328,
        decoration: BoxDecoration(
          color: const Color(0xFF2E3B62),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: 
          Text(text,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            color: Colors.white
          ),
          ),
        ),
      ),
    );
  }
}