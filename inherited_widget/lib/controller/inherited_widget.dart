import 'package:flutter/cupertino.dart';

class StateWidget extends StatefulWidget {
  final Widget child;
  const StateWidget({super.key,required this.child});

  @override
  State<StateWidget> createState() => _StateWidgetState();
}

class _StateWidgetState extends State<StateWidget> {
  var counter = 0;
  increament() {
    setState(() {
  counter++;
});
  }

  @override
  Widget build(BuildContext context) {
    return StateInhWidget(child: widget.child, state: this,counter: counter,);
  }
}

class StateInhWidget extends InheritedWidget {
  //child هنا سيعود على اللى هيورث من الكلاس اللى احنا فيه
  //StateInheWideget(child:MaterialApp) مثال
  StateInhWidget({required super.child, required this.counter , required this.state});
  final int counter;
  final _StateWidgetState state;
  // الدالة دى بتراقب ان لوفى تغيير فى القيم بتعيد بناء الويدجت الى بتتورث منها
  //counter القيمة اللى هنراقبها
  @override
  bool updateShouldNotify(covariant StateInhWidget oldWidget) {
    print('changed' + '$counter');
    //oldWidget من نوع State
    return oldWidget.counter != counter; //
  }

  static _StateWidgetState of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<StateInhWidget>()!.state;
}
