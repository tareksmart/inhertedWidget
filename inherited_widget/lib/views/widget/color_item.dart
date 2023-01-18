import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:inherited_widget/controller/inherited_widget.dart';

class ColorItem extends StatelessWidget {
  final MaterialColor color;
  const ColorItem({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    var state = StateInhWidget.of(context);
    return InkWell(
      onTap: () {
        state?.setColor(color);
        Navigator.of(context).pop();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: SizedBox(
            width: double.infinity,
            height: 70,
            child: DecoratedBox(decoration: BoxDecoration(color: color))),
      ),
    );
  }
}
