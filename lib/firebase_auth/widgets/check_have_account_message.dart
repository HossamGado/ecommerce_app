import 'package:flutter/material.dart';

class CheckHaveAccountMessage extends StatelessWidget {
  const CheckHaveAccountMessage({
    super.key,
    required this.onTap,
    required this.text,
    required this.textButton,
  });

  final VoidCallback onTap;
  final String text;
  final String textButton;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        ),
        TextButton(
          onPressed: onTap,
          child: Text(
           textButton,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
