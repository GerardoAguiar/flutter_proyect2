import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  
  final String imageUrl;
  final String ? name;
  
  const CustomCardType2({super.key, required this.imageUrl, required this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      shadowColor: AppTheme.primary.withOpacity(0.1),
      child: Column(
        children: [
          FadeInImage(
            placeholder: const AssetImage('assets/zelda_loading.gif'), 
            image: NetworkImage(imageUrl, scale: 1.0),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),),
            
            if(name != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only( right: 20, top: 10, bottom: 10 ),
              child: Text( name!,style: const TextStyle(fontWeight: FontWeight.bold, color: AppTheme.textColor), )
            )
        ],
      ),
    );
  }
}