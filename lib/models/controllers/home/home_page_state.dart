import 'package:flutter/cupertino.dart';

class HomePageState {
  HomePageState({@required this.counter, @required this.isChecked});

  int counter;
  bool isChecked;

  HomePageState increased() =>
      HomePageState(counter: counter + 1, isChecked: isChecked);

  HomePageState check(bool value) =>
      HomePageState(counter: counter, isChecked: value);
}
