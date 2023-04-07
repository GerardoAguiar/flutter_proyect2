import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS( BuildContext context ) {

    showCupertinoDialog(
      barrierDismissible: false,
      context: context, 
      builder: ( context ) {
        return CupertinoAlertDialog(
          title: const Text('Titulo'),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('This is a content of the alert'),
              SizedBox( height: 10 ),
              FlutterLogo( size: 100 )
            ],
          ),
          actions: [

            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel', style: TextStyle( color: Colors.red ))
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Ok')
            ),

          ],
        );
      }
    );

  }

  void displayDialogAndroid(BuildContext context){
      showDialog(
        barrierDismissible: false,
        context: context, 
        builder: (context) {

          return AlertDialog(
            elevation: 5,
            title: const Text('Title'),
            shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(10)),
            content: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
              Text('This is a content of the alert'),
              SizedBox(height: 10,),
              FlutterLogo(size: 100,)
            ]),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context), 
                child: const Text('Cancel')),
              TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Ok')
            ),
            ],

          );
        
        }
    
    );

  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Alerts In Flutter'),
      ),
      body: Center(
         child: ElevatedButton(
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Text('Show Alert',style: TextStyle(fontSize: 15),),
          ),
          onPressed: () => Platform.isAndroid 
            ? displayDialogAndroid(context) 
            : displayDialogIOS(context),
           ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}