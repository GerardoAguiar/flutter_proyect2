import 'package:flutter/material.dart';
import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';

class AppRoutes{

    static const initialRoute = 'home';

    static final menuOptions = <MenuOption>[
        MenuOption(route: 'home', icon: Icons.home, name: 'Home Screen', screen: const HomeScreen()),
        MenuOption(route: 'listView1', icon: Icons.receipt_long, name: 'ListView Type 1', screen: const ListView1Screen()),
        MenuOption(route: 'listView2', icon: Icons.list_alt, name: 'ListView Type 2', screen: const ListView2Screen()),
        MenuOption(route: 'alert', icon: Icons.notifications, name: 'Alert Screen', screen: const AlertScreen()),
        MenuOption(route: 'card', icon: Icons.credit_card, name: 'Card Screen', screen: const CardScreen())

    ];

    static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    
      Map<String, Widget Function(BuildContext)> appRoutes = {
        
      };

      for (final option in menuOptions) {
        appRoutes.addAll({option.route: (BuildContext context) => option.screen});
      }
      
      return appRoutes;
      
    }

    /*
    static Map<String, Widget Function(BuildContext)> routes = {
        'home'     :(BuildContext context) => const HomeScreen(),
        'listView1':(BuildContext context) => const ListView1Screen(),
        'listView2':(BuildContext context) => const ListView2Screen(),
        'alert'    :(BuildContext context) => const AlertScreen(), 
        'card'     :(BuildContext context) => const CardScreen() 
    };
    */

    static Route<dynamic> onGenerateRoutes (RouteSettings settings) {
        return MaterialPageRoute(
          builder: (context) => const AlertScreen(),
      );
    }
}