import 'package:flutter/material.dart';

import '../utils/size_config.dart';
import '../widget/AdaptiveLayoutWidget/adaptive_layout_widget.dart';
import '../widget/custom_drawer.dart';
import 'layouts/dash_board_desktop_layout.dart';
import 'layouts/dash_board_mobile_layout.dart';
import 'layouts/dash_board_tablet_layout.dart';

class DashBoradView extends StatefulWidget {
  const DashBoradView({super.key});

  @override
  State<DashBoradView> createState() => _DashBoradViewState();
}

class _DashBoradViewState extends State<DashBoradView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0xFFFAFAFA),
              leading: IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                icon: const Icon(Icons.menu),
              ),
              centerTitle: true,
              title: const Text(
                "Dash Borad ",
                style: TextStyle(
                    color: Colors.brown,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            )
          : null,
      drawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? const CustomDrawer()
          : null,
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashBoardMobileLayout(),
        tabletLayout: (context) => const DashBoardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
