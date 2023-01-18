// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AppState {
 final int counter;
  final MaterialColor appColor;

  AppState({this.counter = 0, this.appColor = Colors.blue});

//هنا دالة ال copy with
// وظيفتها انها بتغير فى قيم ال
//final
// عن طريق انشاء اوبجكت من الكلاس وتحط فيه قيم جديده لو مفيش جديده يبقى القيم الاووليه موجوده
  AppState copyWith({
    int? counter,
    MaterialColor? appColor,
  }) {
    return AppState(
      counter: counter ?? this.counter,
      appColor: appColor ?? this.appColor,
    );
  }

  // @override
  // bool operator ==(covariant AppState other) {
  //   if (identical(this, other)) return true;
  
  //   return 
  //     other.counter == counter &&
  //     other.appColor == appColor;
  // }

  // @override
  // int get hashCode => counter.hashCode ^ appColor.hashCode;
}
