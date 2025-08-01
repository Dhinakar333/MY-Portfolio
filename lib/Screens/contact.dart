import 'package:flutter/material.dart';

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
        title: Text("Contact"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(onPressed: launchLinkedIn,
                      icon: Image.asset("assets/linkedinlogo.png",
                        height: 30,
                        width: 30,)
                  ),
                  TextButton(
                    onPressed: () {
                      launchLinkedIn();
                    },
                    child:Text("LinkedIn - Dhinakar S") ,),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(onPressed: launchLinkedIn,
                      icon: Image.asset("assets/linkedinlogo.png",
                        height: 30,
                        width: 30,)
                  ),
                  Text("LinkedIn - Dhinakar S"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: launchGithub,
                      icon: Image.asset("assets/githublogo.png",
                        height: 30,
                        width: 30,)
                  ),
                  Text("Github - Dhinakar333"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(onPressed: launchInstagram,
                      icon: Image.asset("assets/instagramlogo.png",
                        height: 30,
                        width: 30,)
                  ),
                  Text("Instagram - innocent lover"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(onPressed: launchGmail,
                      icon: Image.asset("assets/gmaillogo.png",
                        height: 30,
                        width: 30,)
                  ),
                  Text("Gmail - dhinakard41@gmail.com"),
                ],
              ),
            ],
          ),
        ),
      ),

    );
  }
}