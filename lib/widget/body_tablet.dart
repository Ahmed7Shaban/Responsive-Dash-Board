import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/body_desktop_sections.dart';
import 'body_mobile.dart';
import 'custom_drawer.dart';
import 'income_section.dart';
import 'my_cards_and_transction_history_section.dart';

class BodyTablet extends StatelessWidget {
  const BodyTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.only(top: 40),
              child: BodyMobile(),
            )),
      ],
    );
  }
}
