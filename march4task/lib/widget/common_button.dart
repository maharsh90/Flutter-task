import 'package:flutter/material.dart';

class buildButton extends StatefulWidget {
  String txt;
  final VoidCallback onPressed;
  buildButton({super.key, required this.txt, required this.onPressed});

  @override
  State<buildButton> createState() => _buildButtonState();
}

class _buildButtonState extends State<buildButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
        ),
        onPressed: widget.onPressed,
        child: Text(widget.txt),
      ),
    );
  }
}
