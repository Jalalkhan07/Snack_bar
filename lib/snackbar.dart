

import 'package:flutter/material.dart';

class SuccessSnackBar extends StatelessWidget {
  const SuccessSnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Snack Bar Example'),
      ),
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.orange),
          ), onPressed: (){
            const SuccessSnackBar =SnackBar(
              content: Text('Hello this is Snack Bar',
              style: TextStyle(color: Colors.black87),),
              backgroundColor: Colors.orange,
              elevation: 2,
              behavior:  SnackBarBehavior.floating,
            );
            ScaffoldMessenger.of(context).showSnackBar(SuccessSnackBar);

        },
        child: Text('click Here',
         style: TextStyle(color:Colors.black87 ),),
        ),
      ),
    );
  }
}
