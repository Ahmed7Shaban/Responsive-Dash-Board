import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/body_desktop_sections.dart';
import 'package:responsive_dash_board/widget/custom_button.dart';

import '../utils/app_styes.dart';
import 'all_expenses.dart';
import 'income_section.dart';
import 'my_cards_and_transction_history_section.dart';
import 'quick_invoice.dart';

class BodyMobile extends StatelessWidget {
  const BodyMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpenses(),
          SizedBox(
            height: 24,
          ),
          QuickInvoice(),
          SizedBox(
            height: 24,
          ),
          MyCardsAndTransctionHistorySection(),
          SizedBox(
            height: 24,
          ),
          SizedBox(
            width: 32,
          ),
          IncomeSection(),
          SizedBox(
            width: 32,
          ),
        ],
      ),
    );
  }
}
