import 'package:fl_components/router/app_routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final menuOptions = AppRoutes.menuOptions;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Components In Flutter'),
      ),
      body: ListView.separated
      (itemBuilder:(context, index) => ListTile(
        leading: Icon(menuOptions[index].icon),
        title: Text(menuOptions[index].name),
        onTap: (){

            //final route = MaterialPageRoute(builder: (context) => const ListView2Screen());          
            //Navigator.push(context, route);
            Navigator.pushNamed(context, menuOptions[index].route);

        },
      ), 
      separatorBuilder:(_, index) => const Divider(), 
      itemCount: AppRoutes.menuOptions.length)
      );
  }
}