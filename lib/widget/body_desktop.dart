import 'package:flutter/material.dart';

import 'all_expenses.dart';
import 'body_desktop_sections.dart';
import 'custom_drawer.dart';
import 'quick_invoice.dart';

class BodyDesktop extends StatelessWidget {
  const BodyDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 24,
        ),
        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            AllExpenses(),
                            SizedBox(
                              height: 24,
                            ),
                            QuickInvoice(),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Expanded(child: BodyDesktopSections()),
                    SizedBox(
                      width: 24,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

////
// return const CustomScrollView(
// slivers: [
// SliverFillRemaining(
// hasScrollBody: false,
// child: Row(
// children: [
// //   CustomDrawer(),
// Expanded(flex: 2, child: BodyMobile()),
// SizedBox(
// width: 24,
// ),
// Expanded(child: BodyDesktopSections()),
// SizedBox(
// width: 24,
// ),
// ],
// ),
// )
// ],
// );
//
