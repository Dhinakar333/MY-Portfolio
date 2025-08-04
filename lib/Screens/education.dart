import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: EducationPage(),
    debugShowCheckedModeBanner: false,
  ));
}
class EducationPage extends StatefulWidget{
  const EducationPage({super.key});

  @override
  State<EducationPage> createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Education Qualification"),
            SizedBox(width: 20,),
            Image.asset("assets/graduatedlogo.png",
            height: 30,
              width: 30,
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.grey
                  ),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Title(color: Colors.black, child: Text("Computer Science & Engineering",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),)),
                  SizedBox(height: 20,),
                  Text("PGP College of Engineering and Technology"
                      ),
                  Text("Namakkal"),
                  Text("CGPA : 7.5")
                ],
              ),
              ),
            ),
            SizedBox(height: 30,),
            Expanded(
              child: Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.grey
                  ),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Title(color: Colors.black, child: Text("HSC & SSLC",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),)),
                  SizedBox(height: 20,),
                  Text("Rani Meyyammai Higher Secondary School "
                      ),
                  Text("Puliyur,Karur"),
                  Text("HSC : 80%"),
                  Text("SSLC : 70%"),
                ],
              ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}