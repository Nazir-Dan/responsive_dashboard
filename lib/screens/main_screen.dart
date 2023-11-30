import 'package:responsive_dashboard/responsive/responsive_layout.dart';
import 'package:responsive_dashboard/screens/desktop_Screen.dart';
import 'package:responsive_dashboard/screens/mobile_screen.dart';
import 'package:responsive_dashboard/screens/tablet_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
        mobileScaffold: MobileScreen(),
        tabletScaffold: TabletScreen(),
        desktopScaffold: DesktopScreen());
  }
}
