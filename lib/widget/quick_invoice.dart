import 'package:flutter/material.dart';

import 'custom_background.dart';
import 'latest_transction.dart';
import 'quick_invoice_form.dart';
import 'quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackground(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuickInvoiceHeader(),
        SizedBox(
          height: 24,
        ),
        LatestTransction(),
        Divider(
          height: 48,
          color: Colors.black,
          // color: Color(0xffF1F1F1),
        ),
        QuickInvoiceForm(),
      ],
    ));
  }
}
