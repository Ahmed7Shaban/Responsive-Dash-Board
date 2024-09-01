import 'package:flutter/material.dart';

import 'all_expensess_items_list_view.dart';
import 'all_expesne_header.dart';
import 'custom_background.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AllExpenseHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensessItemsListView(),
        ],
      ),
    );
  }
}
