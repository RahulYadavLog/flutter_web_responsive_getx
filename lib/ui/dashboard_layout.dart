import 'package:fincare1/desktop/desktop_screen.dart';
import 'package:fincare1/mobile/mobile_screen.dart';
import 'package:fincare1/responsive_layout.dart';
import 'package:flutter/material.dart';

import '../RM/view/main_drawer_page.dart';

class DashboardLayout extends StatelessWidget {
  const DashboardLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(mobileBody: MobileScreen(), desktopBody: MasterPage());
  }
}
