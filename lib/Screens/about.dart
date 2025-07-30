import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: AboutPage(),
    debugShowCheckedModeBanner: false,
  ));
}
class AboutPage extends StatefulWidget{
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text("I'm Dhinakar, proficient flutter developer"),
          ],
        ),
      ),

    );
  }
}