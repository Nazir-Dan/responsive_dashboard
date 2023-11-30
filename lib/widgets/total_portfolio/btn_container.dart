import 'package:responsive_dashboard/constants.dart';
import 'package:flutter/material.dart';

class BtnContainer extends StatelessWidget {
  final String label;
  final Color bgColor;
  final Color labelColor;
  const BtnContainer({
    super.key,
    required this.label,
    required this.bgColor,
    required this.labelColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: 4,
      ),
      margin: const EdgeInsets.symmetric(horizontal: 3),
      decoration: BoxDecoration(
        color: bgColor,
        border: Border.all(color: secondaryColor, width: 1),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: labelColor,
              fontWeight: FontWeight.bold,
              fontSize: 10,
            ),
      ),
    );
  }
}
