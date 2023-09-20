
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Con extends StatefulWidget {
  static const String c ='/co';
  const Con({super.key});

  @override
  State<Con> createState() => _ConState();
}

class _ConState extends State<Con> {
  @override
  Widget build(BuildContext context) {
    final Uri phone = Uri.parse('tel:+20 109 664 1169 ');
    final Uri w = Uri.parse('https://wa.me/01096641169');

    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton.icon(
            icon: Text('WHATSAPP'),
            label: Icon(Icons.message_rounded),
            onPressed: ()async{
        launchUrl(w);
          },

          )],
      ),
    );
  }
}


