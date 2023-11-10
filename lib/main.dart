import 'package:flutter/material.dart';
import 'package:sbox_web/core/components/responsive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sbox',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // useMaterial3: true,
      ),
      home: const ResponsiveWidget(),
    );
  }
}
