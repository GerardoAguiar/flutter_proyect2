import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Link'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 7),
            child: const CircleAvatar(
              backgroundColor: Colors.green,
              child: Text('L',style: TextStyle(color: Colors.white),)
            ),
          )
        ],
      ),
      body: const Center(
         child: CircleAvatar(
          maxRadius: 110,
          backgroundImage: NetworkImage('https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/zelda-cover-1582028296.jpg?crop=0.563xw:1.00xh;0.416xw,0&resize=640:*'),
         ),
      ),
    );
  }
}