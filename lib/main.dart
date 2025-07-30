import 'package:flutter/material.dart';
import 'package:portfolio_final/Screens/about.dart';
import 'package:portfolio_final/Screens/contact.dart';
import 'package:portfolio_final/Screens/education.dart';
import 'package:portfolio_final/Screens/project.dart';
import 'package:portfolio_final/Screens/skills.dart';
import 'Screens/resume.dart';
import 'Screens/contact_links.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        toolbarHeight: 50,
        title: const Text("Welcome to my Portfolio",
        style: TextStyle(
          fontSize: 18,
        ),),
        backgroundColor: Colors.black12,
        actions: [
          Row(
            children: [
              Tooltip(
                message: "Download my Resume",
                child: IconButton(onPressed: (){
                  Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context)=> ResumePage()));
                },
                    icon: Icon(Icons.download,
                      color: Colors.black,),
                  iconSize: 20,
                    style: ButtonStyle(
                      side: WidgetStatePropertyAll(BorderSide(
                        width: 1,
                        color: Colors.blue
                      )),
                    ),
                    ),
              ),
              const SizedBox(width: 30,)
            ],
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Horizontal Profile Section
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 60,),
                    // Intro Text
                    Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text("HI",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 26,
                                color: Colors.blue,
                                fontStyle: FontStyle.normal,
                              ),
                          ),
                          const Text("I'm Dhinakar",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 36,
                                color: Colors.blue,
                                fontStyle: FontStyle.italic,
                              )),
                          const SizedBox(height: 25,),
                          Row(
                            children: [
                              IconButton(onPressed: launchLinkedIn,
                                  icon: Image.asset("assets/linkedinlogo.png",
                                    height: 30,
                                    width: 30,)
                              ),
                             IconButton(onPressed: launchInstagram,
                                 icon: Image.asset("assets/instagramlogo.png",
                                   height: 30,
                                   width: 30,)
                             ),
                              IconButton(onPressed: launchGmail,
                                 icon: Image.asset("assets/gmaillogo.png",
                                   height: 30,
                                   width: 30,)
                              ),
                              IconButton(onPressed: launchGithub,
                                 icon: Image.asset("assets/githublogo.png",
                                   height: 30,
                                   width: 30,)
                              ),
                            ],
                          )

                        ],
                      ),
                    ),

                    const SizedBox(width: 30),

                    // Profile Image
                    Container(
                      margin: const EdgeInsets.all(20),
                      height: 250,
                      width: 300,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 3,
                          color: Colors.blue,
                        ),
                      ),
                      child: CircleAvatar(
                        radius: 80,
                        backgroundImage: AssetImage("assets/dhinakar.jpg"),
                      ),
                    ),

                    const SizedBox(width: 70),

                    // Role and Button
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Flutter",
                            style: TextStyle(fontSize: 30)),
                        const Text("Developer",
                            style: TextStyle(fontSize: 30)),
                        SizedBox(height: 20,),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  const ProjectPage()),
                            );
                          },
                          style: ButtonStyle(
                            side: WidgetStateProperty.all(BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ))
                          ),
                          child: Text("Explore Works",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // Project Button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AboutPage()),
                      );
                    },
                    style: ButtonStyle(
                      side: WidgetStateProperty.all(BorderSide(
                        color: Colors.blue,
                        width: 2,
                      ))
                    ),
                    child: const Text("About"),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProjectPage()),
                      );
                    },
                    style: ButtonStyle(
                      side: WidgetStateProperty.all(BorderSide(
                        width: 2,
                        color: Colors.blue
                      ))
                    ),
                    child: const Text("Projects"),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SkillsPage()),
                      );
                    },
                    style: ButtonStyle(
                      side: WidgetStateProperty.all(BorderSide(
                        width: 2,
                        color: Colors.blue
                      ))
                    ),
                    child: const Text("Skills"),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EducationPage()),
                      );
                    },
                    style: ButtonStyle(
                      side: WidgetStatePropertyAll(BorderSide(
                        width: 2,
                        color: Colors.blue
                      ))
                    ),
                    child: const Text("Education"),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context) => const ContactPage()));
                    },
                    style: ButtonStyle(
                      side: WidgetStatePropertyAll(BorderSide(
                        width:2,
                        color: Colors.blue,
                      ))
                    ),
                    child: const Text("Contact"),
                  ),
                  const SizedBox(width: 20),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
