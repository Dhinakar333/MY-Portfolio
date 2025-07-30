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
  bool _showDetails = false;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black38,
      appBar: AppBar(
        title: Text("My Works"),
      ),
      body: Column(
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 300),

          )
    //   AnimatedContainer(
    //   duration: Duration(milliseconds: 400),
    //   padding: EdgeInsets.all(_showDetails ? 20 : 10),
    //   decoration: BoxDecoration(
    //     color: Colors.white,
    //     boxShadow: _showDetails
    //         ? [BoxShadow(color: Colors.black26, blurRadius: 10)]
    //         : [],
    //   ),
    //   child: Column(
    //     children: [
    //       Image.asset('assets/product.png', height: 100),
    //       if (_showDetails)
    //         Text('This is an awesome product with great features'),
    //       ElevatedButton(
    //         onPressed: () {
    //           setState(() {
    //             _showDetails = !_showDetails;
    //           });
    //         },
    //         child: Text(_showDetails ? "Less" : "More"),
    //       ),
    //     ],
    //   ),
    // ),
    ],
      ),
    );
  }
}