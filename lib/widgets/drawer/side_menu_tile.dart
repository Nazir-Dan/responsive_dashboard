import 'package:responsive_dashboard/constants.dart';
import 'package:flutter/material.dart';

class SideMenuTile extends StatelessWidget {
  final String title;
  final Icon icon;
  final VoidCallback? onPress;
  final bool isSelected;
  SideMenuTile({
    super.key,
    required this.title,
    required this.icon,
    this.onPress,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? primaryColor : null,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: ListTile(
        visualDensity: const VisualDensity(vertical: -4),
        dense: !isSelected,
        onTap: onPress,
        leading: icon,
        title: Text(title),
        trailing: isSelected
            ? Container(
                width: 5,
                height: 25,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
              )
            : null,
      ),
    );
  }
}
