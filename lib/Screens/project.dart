import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(
    home: ProjectPage(),
    debugShowCheckedModeBanner: false,
  ));
}
class ProjectPage extends StatefulWidget{
  const ProjectPage({super.key});
  @override
  State<ProjectPage> createState()=> _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage>{
bool _isProject1 = false;
bool _isProject2 = false;
bool _isProject3 = false;
bool _isProject4 = false;
@override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("My Projects"),
      ),
      body: SingleChildScrollView(
        child:Column(
          children: [
            GridView.count(crossAxisCount: 3,
              shrinkWrap: true,
              padding: EdgeInsets.all(20),
              children: [
                MouseRegion(
                  onEnter: (_) => setState(() => _isProject1 = true),
                  onExit: (_) => setState(() => _isProject1 = false),
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    height: _isProject1 ? 200 : 200,
                    width: _isProject1 ? 400 : 150,
                    curve: Curves.easeInOut,
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: _isProject1 ? Colors.blue : Colors.black26,
                          blurRadius: _isProject1 ? 20 : 5,
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Syntexa", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                          SizedBox(height: 5),
                          Text(_isProject1? "":"Flutter Widget Reference App"),
                          if(!_isProject1)
                            Image.asset(
                              "assets/syntexadarklogo.png",
                              height: _isProject1? 200:100,
                              width: _isProject1? 200:100,
                              fit: BoxFit.cover,
                          ),
                          SizedBox(height: 10),
                          Text(_isProject1?
                            "":"Developed a Flutter-based app that displays predefined syntax and descriptions for user-entered Flutter widgets. Designed for offline use with a clean UI to assist beginners in quickly understanding Flutter components.",
                            style: TextStyle(fontSize: 14),
                            //overflow: _isProject1? TextOverflow.ellipsis :TextOverflow.visible,
                          ),
                          if(_isProject1)
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(onPressed: (){

                                }, style: ButtonStyle(
                                  backgroundColor: WidgetStatePropertyAll(Colors.grey)
                                ),
                                    child: Text("View Demo",style: TextStyle(
                                    color: Colors.white
                                ),)),
                                SizedBox(width: 10,),
                                ElevatedButton(onPressed: (){

                                },style: ButtonStyle(
                                  backgroundColor:WidgetStatePropertyAll(Colors.grey),
                                ),
                                    child: Row(
                                  children: [
                                    Text("GitHub",style: TextStyle(
                                      color: Colors.black
                                    ),),
                                    SizedBox(width: 10,),
                                    Image.asset("assets/githublogo.png",
                                    height: 24,
                                    width: 24,),
                                  ],
                                )),
                              ],
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
                // MouseRegion(
                //   onEnter: (_) => setState(() => _isProject2 = true),
                //   onExit: (_) => setState(() => _isProject2 = false),
                //   child: AnimatedContainer(
                //     duration: Duration(milliseconds: 300),
                //     height: _isProject2 ? 200 : 200,
                //     width: _isProject2 ? 400 : 150,
                //     curve: Curves.easeInOut,
                //     margin: EdgeInsets.all(20),
                //     decoration: BoxDecoration(
                //     color: Colors.grey.shade100,
                //       borderRadius: BorderRadius.circular(20),
                //       boxShadow: [
                //         BoxShadow(
                //           color: _isProject2 ? Colors.blue : Colors.black26,
                //           blurRadius: _isProject2 ? 20 : 5,
                //         )
                //       ],
                //     ),
                //     child: Padding(
                //       padding: const EdgeInsets.all(8),
                //       child: Column(
                //         crossAxisAlignment: CrossAxisAlignment.center,
                //         children: [
                //           Text("Syntexa", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                //           SizedBox(height: 5),
                //           Text(_isProject2? "":"Flutter Widget Reference App"),
                //           if(!_isProject2)
                //             Image.asset(
                //               "assets/syntexadarklogo.png",
                //               height: _isProject2? 200:100,
                //               width: _isProject2? 200:100,
                //               fit: BoxFit.cover,
                //           ),
                //           SizedBox(height: 10),
                //           Text(_isProject2?
                //             "":"Developed a Flutter-based app that displays predefined syntax and descriptions for user-entered Flutter widgets. Designed for offline use with a clean UI to assist beginners in quickly understanding Flutter components.",
                //             style: TextStyle(fontSize: 14),
                //             //overflow: _isProject1? TextOverflow.ellipsis :TextOverflow.visible,
                //           ),
                //           if(_isProject2)
                //             Row(
                //               mainAxisAlignment: MainAxisAlignment.center,
                //               children: [
                //                 ElevatedButton(onPressed: (){
                //
                //                 }, style: ButtonStyle(
                //                   backgroundColor: WidgetStatePropertyAll(Colors.grey)
                //                 ),
                //                     child: Text("View Demo",style: TextStyle(
                //                     color: Colors.white
                //                 ),)),
                //                 SizedBox(width: 10,),
                //                 ElevatedButton(onPressed: (){
                //
                //                 },style: ButtonStyle(
                //                   backgroundColor:WidgetStatePropertyAll(Colors.grey),
                //                 ),
                //                     child: Row(
                //                   children: [
                //                     Text("GitHub",style: TextStyle(
                //                       color: Colors.black
                //                     ),),
                //                     SizedBox(width: 10,),
                //                     Image.asset("assets/githublogo.png",
                //                     height: 24,
                //                     width: 24,),
                //                   ],
                //                 )),
                //               ],
                //             ),
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
              ]
                )
              ]
              )
            )
    );
  }
}