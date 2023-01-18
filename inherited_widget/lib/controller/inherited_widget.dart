import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inherited_widget/model/app_state.dart';

class StateWidget extends StatefulWidget {
  final Widget child;
  const StateWidget({super.key, required this.child});

  @override
  State<StateWidget> createState() => _StateWidgetState();
}

class _StateWidgetState extends State<StateWidget> {
  var state = AppState();

  increament() {
    var counter = state.counter + 1;
    final newState = state.copyWith(counter: counter);
    setState(() {
      state = newState;
    });
  }

  setColor(MaterialColor color) {
    final newColor = state.copyWith(appColor: color);
    setState(() {
      state = newColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return StateInhWidget(
      child: widget.child,
      state: this,
      appState: state,
    );
  }
}

class StateInhWidget extends InheritedWidget {
  var appState = AppState();
  final _StateWidgetState state;
  //child هنا سيعود على اللى هيورث من الكلاس اللى احنا فيه
  //StateInheWideget(child:MaterialApp) مثال
  //بياخد child لانه لازم يكون فوق حد
  StateInhWidget({
    required super.child,
    required this.appState,
    required this.state,
  });

  

  // الدالة دى بتراقب ان لوفى تغيير فى القيم بتعيد بناء الويدجت الى بتتورث منها
  //counter القيمة اللى هنراقبها
  @override
  bool updateShouldNotify(covariant StateInhWidget oldWidget) {
    //oldWidget من نوع State
    print('changed ${state.state.appColor}');
    return oldWidget.appState != appState; //
  }

  static _StateWidgetState? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<StateInhWidget>()!.state;
  }
}
