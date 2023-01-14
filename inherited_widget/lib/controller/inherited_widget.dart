import 'package:flutter/cupertino.dart';

class StateInhWidget extends InheritedWidget {
  //child هنا سيعود على اللى هيورث من الكلاس اللى احنا فيه
  //StateInheWideget(child:MaterialApp) مثال
  StateInhWidget({required super.child, this.counter = 0});
  final int counter;
  // الدالة دى بتراقب ان لوفى تغيير فى القيم بتعيد بناء الويدجت الى بتتورث منها
  //counter القيمة اللى هنراقبها
  @override
  bool updateShouldNotify(covariant StateInhWidget oldWidget) {
    print('changed' + '$counter');
    //oldWidget من نوع State
    return oldWidget.counter != counter; //
  }

  static of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<StateInhWidget>();

 
}
