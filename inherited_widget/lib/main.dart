import 'package:flutter/material.dart';
import 'package:inherited_widget/controller/inherited_widget.dart';
import 'package:inherited_widget/views/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StateWidget(
      //حطينا ال inherted على راس التطبيق كله عشان نوصله من اى مكان
//هنا عملنا بيلدر لان عند استخدام ال كونتكست الخاص بدالة البيلد الاصلية اللى فوق مع انشاء اوبجكت من الانهيرت ودجت اللى هى دى
// var stateWidget = StateInhWidget.of(context);
//سوف يحدث خطا لان الكونتكست بيشوف اللى فوقه فى الشجرة هنا عملنا بيلدر عشان يشوف 
//StateWidget
      child: Builder(builder: (context) {
        var stateWidget = StateInhWidget.of(context);
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: stateWidget?.state.appColor,
          ),
          home: Home(),
        );
      }),
    );
  }
}
