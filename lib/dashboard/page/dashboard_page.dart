import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  List images = [
    'assets/image/a.jpeg',
    'assets/image/a.jpeg',
    'assets/image/a.jpeg',
    'assets/image/a.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [Container()]),
    );
  }
}
