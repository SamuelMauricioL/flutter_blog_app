import 'package:flutter/material.dart';

class BaBanner extends StatelessWidget {
  const BaBanner({required this.imagePath, super.key});

  final ImageProvider imagePath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 150,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: imagePath,
          ),
        ),
      ),
    );
  }
}
