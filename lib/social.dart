// social.dart
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMedia extends StatelessWidget{
  final List<Map<String, dynamic>> ls = [{'title' : 'Facebook', 'link': 'https://www.facebook.com'}, 
      {'title' : 'Instagram', 'link': 'https://www.instagram.com'},
      {'title' : 'Snapchat', 'link': 'https://www.snapchat.com'},
      {'title' : 'Twitter', 'link': 'https://www.twitter.com'}];

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Social Links'),
      ),
      body: ListView.builder(
        itemCount: ls.length,
        itemBuilder: (context, index) {
          final link = ls[index];
          return ListTile(
            title: Text(
              link['title'],
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.lightGreen),
              textAlign: TextAlign.center,
            ),
            onTap: () async{
              final url = Uri.parse(link['link']);
              if (await canLaunchUrl(url)) {
                await launchUrl(url, mode: LaunchMode.externalApplication);
              }
            },
          );
        },
      )
    );
  } 
}