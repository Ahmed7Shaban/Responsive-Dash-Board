import 'package:flutter/material.dart';

import 'package:device_preview/device_preview.dart';

import 'views/dash_borad_view.dart';

void main() => runApp(
      DevicePreview(
        enabled: false,
        builder: (context) => const DashBorad(), // Wrap your app
      ),
    );

class DashBorad extends StatelessWidget {
  const DashBorad({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: const DashBoradView(),
    );
  }
}