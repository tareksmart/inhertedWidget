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
    return StateWidget(//حطينا ال inherted على راس التطبيق كله عشان نوصله من اى مكان
    
      child:  MaterialApp(
        title: 'Flutter Demo',
       
        home: Home(),
      ),
    );
  }
}
