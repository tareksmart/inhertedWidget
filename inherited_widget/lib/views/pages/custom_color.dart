import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:inherited_widget/views/widget/color_item.dart';

class CustomColor extends StatelessWidget {
  CustomColor({super.key});
  List<MaterialColor> availableColor = [
    Colors.amber,
    Colors.blue,
    Colors.green,
    Colors.red
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('select color'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: availableColor.map((e) => ColorItem(color: e)).toList()),
        ),
      ),
    );
  }
}
