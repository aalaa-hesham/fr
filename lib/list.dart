import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'contact.dart';

class Voc extends StatefulWidget {
  static const String vo = '/si';

  const Voc({super.key});

  @override
  State<Voc> createState() => _VocState();
}

class _VocState extends State<Voc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('menue'),
      ),
      body: Container(
          color: Colors.indigo,
          child: Column(

            children: [
              Text(
                'quand les poules ourant des dents',
                style: TextStyle(
                    color: Colors.pink,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    backgroundColor: Colors.cyanAccent.shade400),
              ),
              Center(
                child: Container(
                  width: 400,
                  height: 100,
                  child: Text(
                    'when pigs can fly',
                    style: TextStyle(
                        color: Colors.pink,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        backgroundColor: Colors.cyanAccent.shade400),

                  ),
                             ),

              ),
              Icon(Icons.access_time_sharp, weight: 160, size: 200, color: Colors.limeAccent,),
              ElevatedButton(onPressed: () =>  Navigator.pushNamed(context,Con.c), child: Text('on y va'),),
            ],
          )),
    );
  }
}
