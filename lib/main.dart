import 'package:flutter/material.dart';
import 'package:myproject/sighnup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF317773),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Stack(

          children: [
            Align(
              child: Image.asset("assets/images/img.png",height: 187,width: 172,),
            ),
            Padding(padding:const EdgeInsets.only(top: 400,left: 66),
            child: SizedBox(height: 40,width: 280,
              child: ElevatedButton(onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Sighnup()),
                );
              }, child: Text("GET STARTED",style: TextStyle(color: Color(0xffD9D9D9),fontWeight: FontWeight.bold,fontSize: 16,letterSpacing: 1),),
              style: ElevatedButton.styleFrom(elevation: 6,backgroundColor: Color(0xff1C3C3A),shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10.0) )),
              ),
            
            ),
              
              
            )
            
          ],
            




        ),
        ]
    )
    );
  }
}

