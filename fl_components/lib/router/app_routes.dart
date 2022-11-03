import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const inicialRoute = 'home';
  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'card',
        icon: Icons.card_membership,
        name: 'Card Screen',
        screen: const CardScreen()),
    MenuOption(
        route: 'listview1',
        icon: Icons.list,
        name: 'Listview 1',
        screen: const Listview1Screen()),
    MenuOption(
        route: 'listview2',
        icon: Icons.list,
        name: 'Listview 2',
        screen: const Listview2Screen()),
    MenuOption(
        route: 'alert',
        icon: Icons.add_alert,
        name: 'Alert',
        screen: const AlertScreen()),
    MenuOption(
        route: 'home',
        icon: Icons.home_filled,
        name: 'Home Screen',
        screen: const HomeScreen()),
  ];
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (var option in menuOptions) {
      appRoutes.addAll({
        option.route: (BuildContext context) => option.screen,
      });
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
