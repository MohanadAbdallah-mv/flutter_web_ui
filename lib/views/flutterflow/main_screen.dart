import 'package:flutter/material.dart';
import 'package:flutter_task/views/flutterflow/dropdown_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("sss"),
      ),
      body: Container(
        width: double.infinity,
        height: 600,
        alignment: Alignment.center,
        child: DropdownWidget(
          width: 100,
          height: 100,
        ),
      ),
    );
  }
}
