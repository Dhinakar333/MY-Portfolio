import 'package:flutter/material.dart';
import 'package:portfolio_final/main.dart';

import 'contact_links.dart';

void main(){
  runApp(MaterialApp(
    home: ContactPage(),
    debugShowCheckedModeBanner: false,
  ));
}
class ContactPage extends StatefulWidget{
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Contacts"),
            SizedBox(width: 20,),
            CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage("assets/contact.gif",) ,
            )
          ],
        ),
      ),
      body: Center(
        child: Center(
      child: Wrap(
      alignment: WrapAlignment.center,
        spacing: 80,
        runSpacing: 30,
        children: [
          _buildContactButton(
            "assets/githublogo.png",
            "GitHub - Dhinakar333",
                () => launchGithub(),
          ),
          _buildContactButton(
            "assets/linkedinlogo.png",
            "LinkedIn - Dhinakar S",
                () => launchLinkedIn(),
          ),
          _buildContactButton(
            "assets/instagramlogo.png",
            "Instagram - innocent lover",
                () => launchInstagram(),
          ),
          _buildContactButton(
            "assets/whatsapplogo.png",
            "WhatsApp - 9597587122",
                () {
                },
          ),
          _buildContactButton(
            "assets/gmaillogo.png",
            "Gmail - dhinakard41@gmail.com",
                () => launchGmail(),
          ),

        ],
      ),
    ),

    ),
    );
  }
}

Widget _buildContactButton(String assetPath, String text, VoidCallback onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      // decoration: BoxDecoration(
      //   border: Border.all(color: Colors.blue.shade300, width: 1),
      //   borderRadius: BorderRadius.circular(10),
      // ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            assetPath,
            height: 30,
            width: 30,
          ),
          SizedBox(width: 10),
          Text(text),
        ],
      ),
    ),
  );
}

