import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
          children: [
            const ListTile(
              leading: Icon(Icons.photo_album_outlined,color: AppTheme.primary,),
              title: Text('Im a Title',style: TextStyle(fontWeight: FontWeight.bold, color: AppTheme.textColor),),
              subtitle: Text('A Material Design card: a panel with slightly rounded corners and an elevation shadow. A card is a sheet of Material used to represent some related information, for example an album, a geographical location, a meal, contact details, etc.'),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                  TextButton(
                    onPressed: (){}, 
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: (){}, 
                    child: const Text('Ok'),
                  ),
              ],
            )
          )
            
        ],
      ),
    );
  }
}