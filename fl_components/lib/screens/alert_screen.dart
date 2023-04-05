import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Alerts In Flutter'),
      ),
      body: const Center(
         child: Text('AlertScreen', style: TextStyle(color: AppTheme.textColor),),
      )
    );
  }
}