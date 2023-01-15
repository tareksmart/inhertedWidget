import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:inherited_widget/controller/inherited_widget.dart';
import 'package:inherited_widget/views/pages/custom_color.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // final statWidget =
    //     context.dependOnInheritedWidgetOfExactType<StateInhWidget>();//استدعينا انهريتد قبل دالة ال of
    final statWidget = StateInhWidget.of(context); //
    //هنا احضرنا ال ستيت انهريتيد ويدجت عن طرق الكونتكست اللى فى دالة ال
    //dependOn
    //from same type of StateInhWidget
    //للوصول الى المتغير counter
    return Scaffold(
      appBar: AppBar(title: Text('home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              statWidget!.counter.toString(),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: 48,
            ),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => CustomColor()));
                },
                icon: Icon(Icons.color_lens),
                label: Text('change color'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          statWidget.increament();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
