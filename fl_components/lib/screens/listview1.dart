import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {

  final options = const['PS5','Xbox Series X','Nintendo Switch','Steam Deck']; 
  const ListView1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        centerTitle: true,
        title: const Text('ListView Type 1'),
      ),
      body: ListView(
        children: [
          ...options.map(
            (game) => ListTile(
              title: Text(game,style: const TextStyle(fontWeight: FontWeight.bold,color: AppTheme.textColor),),
              trailing: const Icon(Icons.sports_esports, color: AppTheme.primary),
              )).toList(),
        ],
      ),
    );
  }
}