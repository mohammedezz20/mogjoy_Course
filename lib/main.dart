import 'package:course/session2/ElevatedButton.dart';
import 'package:course/session2/FlexWidget.dart';
import 'package:course/session2/IconButton.dart';
import 'package:course/session2/TextField.dart';
import 'package:course/session2/WrapWidget.dart';
import 'package:course/session3/design.dart';
import 'package:course/session4/grid_view_widget.dart';
import 'package:course/session4/list_view_widget.dart';
import 'package:course/session4/page_view_widget.dart';
import 'package:course/session4/stack_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: StackWidget(),
    );
  }
}
