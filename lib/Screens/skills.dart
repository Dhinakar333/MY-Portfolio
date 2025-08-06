import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: SkillsPage(),
    debugShowCheckedModeBanner: false,
  ));
}
class SkillsPage extends StatefulWidget{
  const SkillsPage({super.key});

  @override
  State<SkillsPage> createState()=> _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.transparent,
        centerTitle:true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Skills"),
            SizedBox(width: 15,),
            Image.asset("assets/achivementlogo.png",
              height: 26,
            width: 26,)
          ],
        ),
      ) ,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              height: 450,
              width: double.infinity,
              decoration: BoxDecoration(
                border: BoxBorder.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Text("Tech Skills",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                    ),),
                  Text("Languages: ", style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),),
                  Text("Dart, Python (Basics), Java(Basics)"),
                  Text("Development Skills: ", style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),),
                  Text("UI/UX Design"),
                  Text("State Management"),
                  Text("App Deployment (APK)"),
                  Text("Framework: ", style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),),
                  Text("Flutter"),
                  Text("Databases: ", style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),),
                  Text("Hive"),
                  Text("Shared Preferences"),
                  Text("Firebase Firestore"),
                  Text("Tools & Platforms:", style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),),
                  Text(" Flutter, Firebase (Auth,Firestore, Hosting,) Git, GitHub, Android Studio, VS Code" ,
                  textAlign: TextAlign.center,),
                  SizedBox(height: 20,),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              height: 450,
              width: double.infinity,
              decoration: BoxDecoration(
                border: BoxBorder.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Text("Soft Skills",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),),
                  SizedBox(height: 20,),
                  Text("Good Communication"),
                  Text("Decision Making"),
                  Text("Problem-Solving"),
                  Text("Teamwork"),
                  Text("Adaptability"),
                  Text("Continuous Learning"),
                  Text("Languages known:"),
                  Text("Tamil,English"),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }

}