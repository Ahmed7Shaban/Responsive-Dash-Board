import 'package:flutter/material.dart';

import 'income_section.dart';
import 'my_cards_and_transction_history_section.dart';

class BodyDesktopSections extends StatelessWidget {
  const BodyDesktopSections({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 40,
        ),
        MyCardsAndTransctionHistorySection(),
        SizedBox(
          height: 24,
        ),
        Expanded(child: IncomeSection()),
      ],
    );
  }
}
