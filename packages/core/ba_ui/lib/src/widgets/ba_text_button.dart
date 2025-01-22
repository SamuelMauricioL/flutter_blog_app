import 'package:flutter/material.dart';

class BaTextButton extends StatelessWidget {
  const BaTextButton({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        padding: WidgetStateProperty.all<EdgeInsets>(
          EdgeInsets.zero,
        ),
      ),
      onPressed: () {},
      child: child,
    );
  }
}
