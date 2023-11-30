import 'package:responsive_dashboard/constants.dart';
import 'package:responsive_dashboard/widgets/drawer/scrollable_side_menue.dart';
import 'package:responsive_dashboard/widgets/drawer/side_menu.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: height,
      padding: const EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding * 2,
      ),
      decoration: const BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 125,
            child: DrawerHeader(
              padding: const EdgeInsets.only(left: defaultPadding * 1.5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/images/logop.png'),
                      Text(
                        'proxibit',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ],
                  ),
                  Text(
                    'Main Menu',
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                          color: Colors.white70,
                          fontSize: 10,
                        ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: LayoutBuilder(
              builder: (ctx, constrains) {
                if (constrains.maxHeight < 500) {
                  return const SideScrollableMenu();
                } else {
                  return const SideMenu();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
