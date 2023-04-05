import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {

  final options = const['The Legend Of Zelda','Uncharted','Pokemón','Super Mario Bros','God Of War']; 
  const ListView2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        centerTitle: true,
        title: const Text('ListView Type 2',),
        actions: <Widget>[
        IconButton(
          icon: const Icon(
            Icons.settings,
            color: Colors.white,
          ),
          onPressed: () {
            // do something
            },
          )
        ],
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder:(context, index) => ListTile(
        title: Text(options[index], style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: AppTheme.textColor),
          ),
          
        trailing: const Icon(Icons.sports_esports, color: AppTheme.primary,),
        onTap:() {
          final game = options[index];
          print(game);
        },
        ),
        separatorBuilder:(_, __) => const Divider(),
      ),
    );
  }
}