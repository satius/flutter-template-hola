import 'package:flutter/material.dart';
import 'package:hola/models/controllers/home/home_page_state.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  HomePageState createState() => HomePageState();
}
