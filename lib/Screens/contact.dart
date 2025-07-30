import 'package:flutter/material.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [

                Text("Gmail - dhinakard41@mail.com"),
              ],
            ),
          ],
        ),
      ),

    );
  }
}