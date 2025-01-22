import 'package:ba_ui/ba_ui.dart';
import 'package:flutter/material.dart';

class BaChip extends StatelessWidget {
  const BaChip({required this.label, super.key});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        label,
        style: BaTextStyle.whiteLightSm,
      ),
      backgroundColor: BaColorValues.chipBackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
    );
  }
}
