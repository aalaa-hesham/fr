import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled/sign.dart';

import 'list.dart';

class Log extends StatefulWidget {
  static const String login = '/';
  const Log({super.key});

  @override
  State<Log> createState() => _LogState();
}

class _LogState extends State<Log> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 70,
          vertical: 5,
        ),
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Image.asset(
                'assets/images/fr.png',
                width: 250,
                height: 250,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'your email',
                  prefixIcon: Icon(Icons.email),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: Colors.deepOrangeAccent,
                        width: 1.0,
                      )),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'your password',
                  prefixIcon: Icon(Icons.password),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: Colors.deepOrangeAccent,
                        width: 1.0,
                      )),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              MaterialButton(
                  elevation: 5.0,
                  color: Colors.blue,
                  padding: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 80,
                  ),
                  child: Text(
                    'login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide.none,
                  ),
                  onPressed: () =>
                 Navigator.pushNamed(context,Voc.vo),
                  ),
         const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: (){
          // context.go('/si');
           Navigator.of(context).push(MaterialPageRoute(builder: (context){
             return SignUp();
           }));
             },
          child: Text(
          'sign up',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 20,
          ),
        ),
      ),
            ],
          ),
        ),
      ),
    );
  }
}
