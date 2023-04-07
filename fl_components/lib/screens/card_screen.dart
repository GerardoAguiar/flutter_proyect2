//import 'package:fl_components/theme/app_theme.dart';
import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Cards In Flutter'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [

            CustomCardType1(),
            SizedBox( height: 10 ),
            CustomCardType2(
              imageUrl: 'https://nlpaulblog.files.wordpress.com/2016/06/giphy-1.gif?w=371', 
              name: 'The Legend Of Zelda Breath Of The Wild'
              ),
            SizedBox( height: 20 ),
             CustomCardType2(
              imageUrl: 'https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/hc_1440x810/public/media/image/2017/03/evolucion-link.jpg?itok=mRiOYfy3',
              name: null
              ),

        ],
      )
    );
  }
}

