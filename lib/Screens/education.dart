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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                height: 350,
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
                  Text("University Affiliation: Anna University"),
                  Text("Year of Completion: 2025"),
                  Text("Cumulative Grade Point Average (CGPA): 7.5"),
                  Text("At PGP, I gained hands-on experience in software development, participated in technical workshops, completed multiple academic and personal projects, and built a strong foundation in programming, app development, and emerging technologies.",
                  textAlign: TextAlign.center,)
                ],
              ),
              ),
              SizedBox(height: 30,),
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                height: 300,
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
                  Title(color: Colors.black, child: Text("Higher Secondary Education",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),)),
                  SizedBox(height: 20,),
                  Text("Rani Meyyammai Higher Secondary School "
                      ),
                  Text("Puliyur,Karur"),
                  Text("Board: State Board of Tamil Nadu"),
                  Text("Year of Completion: 2021"),
                  Text("Score Achieved: 80%"),
                  Text("During this stage, I developed a deeper understanding of Computer Science and Mathematics, which motivated me to pursue engineering and eventually specialize in mobile and web technologies.",
                  textAlign: TextAlign.center,),
                ],
              ),
              ),
              SizedBox(height: 30,),
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                height: 300,
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
                  Title(color: Colors.black, child: Text("Secondary Education",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),)),
                  SizedBox(height: 20,),
                  Text("Rani Meyyammai Higher Secondary School "
                      ),
                  Text("Puliyur,Karur"),
                  Text("Board: State Board of Tamil Nadu"),
                  Text("Year of Completion: 2019"),
                  Text("Score Achieved: 70%"),
                  Text("This foundational stage of my education strengthened my core understanding of subjects like Mathematics, Science, and English, and sparked my early interest in technology.",
                  textAlign: TextAlign.center,),
                ],
              ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}