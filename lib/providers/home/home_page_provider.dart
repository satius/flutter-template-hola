import 'package:ho_la/models/controllers/home/home_page_controller.dart';
import 'package:ho_la/models/controllers/home/home_page_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final homePageProvider = StateNotifierProvider<HomePageController, HomePageState>((ref) => HomePageController());
