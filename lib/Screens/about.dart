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
        titleSpacing: 60,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("About"),
            SizedBox(width: 40,),
            Image.asset("assets/cvlogo3.png",
            height: 30,
            width: 30,)
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: BoxBorder.all(
                    color: Colors.blue,
                    width: 3,
                  ),
                ),
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage("assets/dhinakar.jpg"),
                ),
              ),
              SizedBox(height: 20,),
              Text("""                    Hello! I’m Dhinakar Dhina, a dedicated and self-driven Flutter developer with a passion for building modern, responsive, and feature-rich cross-platform mobile and web applications. With a strong foundation in both front-end and back-end development, I thrive on turning creative ideas into real-world digital products that are not only visually appealing but also fast, scalable, and user-centric.My journey began with a curiosity for how apps work behind the scenes, which led me to explore Flutter due to its single codebase advantage and beautiful UI capabilities. Over time, I have developed a strong command over Dart programming and gained hands-on experience in using Flutter to build and deploy mobile apps for Android, iOS, and the web.Throughout my projects, I’ve consistently focused on writing clean, maintainable code, implementing smooth animations, and ensuring a seamless user experience. I also enjoy working with Firebase for real-time databases, authentication, cloud messaging, and analytics to create powerful, full-stack applications.""",
              style: TextStyle(
                wordSpacing: 2,
                fontSize: 14,
              ),),
              Title( color: Colors.lightBlue, 
                child: Text("Looking for Opportunities",
                  style:TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ) ,),),
              Text("                     I’m actively looking for full-time roles, internships, or freelance opportunities where I can contribute my skills and grow as a Flutter developer. I’m particularly interested in companies or teams working on impactful, user-focused applications in tech, education, health, or productivity domains.I bring to the table a strong willingness to learn, adapt quickly to new challenges, and work effectively in both independent and collaborative settings."),

            ],
          ),
        ),
      ),

    );
  }
}