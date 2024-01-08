import 'package:flutter/material.dart';
import 'package:gridv_listv/listview_screen.dart';

void main() {
  runApp(const GridVListV());
}

class GridVListV extends StatelessWidget {
  const GridVListV({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewScreen()
    );
  }
}