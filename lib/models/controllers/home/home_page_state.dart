import 'package:flutter/cupertino.dart';

class HomePageState {
  HomePageState({@required this.counter});

  int counter;

  HomePageState increased() => HomePageState(counter: counter + 1);
}
