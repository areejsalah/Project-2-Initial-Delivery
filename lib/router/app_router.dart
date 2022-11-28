import 'package:flutter/cupertino.dart';

class AppRouter {
  static GlobalKey<NavigatorState> globalKey = GlobalKey<NavigatorState>();
  static goToScreen(String routeName, [dynamic arguments]) {
    globalKey.currentState!.pushNamed(routeName, arguments: arguments);
  }
}
