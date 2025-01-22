import 'package:ba_ui/ba_ui.dart';
import 'package:flutter/material.dart';

class BaCard extends StatelessWidget {
  const BaCard({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: BaColorValues.cardBackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
        side: const BorderSide(color: BaColorValues.cardBorder),
      ),
      elevation: 0,
      margin: const EdgeInsets.all(13),
      child: child,
    );
  }
}
