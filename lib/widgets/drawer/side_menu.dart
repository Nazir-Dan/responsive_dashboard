import 'package:responsive_dashboard/constants.dart';
import 'package:responsive_dashboard/widgets/drawer/side_menu_tile.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: defaultPadding,
        ),
        SideMenuTile(
          title: 'Dashboard',
          icon: const Icon(
            Icons.grid_view_outlined,
          ),
          isSelected: true,
        ),
        SideMenuTile(
          title: 'Transactions',
          icon: const Icon(
            Icons.poll_outlined,
          ),
        ),
        SideMenuTile(
          title: 'Transfer',
          icon: const Icon(
            Icons.send,
          ),
        ),
        SideMenuTile(
          title: 'Deposit',
          icon: const Icon(
            Icons.add_box_outlined,
          ),
        ),
        SideMenuTile(
          title: 'Withdraw',
          icon: const Icon(
            Icons.upload,
          ),
        ),
        SideMenuTile(
          title: 'Payment',
          icon: const Icon(
            Icons.account_balance_wallet_outlined,
          ),
        ),
        SideMenuTile(
          title: 'Messages',
          icon: const Icon(
            Icons.description_outlined,
          ),
        ),
        const Spacer(),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Divider(),
        ),
        SideMenuTile(
          title: 'Account',
          icon: const Icon(
            Icons.percent,
          ),
        ),
        SideMenuTile(
          title: 'Settings',
          icon: const Icon(
            Icons.settings_outlined,
          ),
        ),
      ],
    );
  }
}
