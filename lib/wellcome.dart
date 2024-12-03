import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myproject/Last.dart';

import 'hh/homepage.dart';

class Wellcome extends StatefulWidget {
  const Wellcome({super.key});

  @override
  State<Wellcome> createState() => _WellcomeState();
}

class _WellcomeState extends State<Wellcome> {
  final bool check =false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF317773),
      body: Stack(
        children: [

          Padding(
            padding: const EdgeInsets.only(top: 57,
                left: 120),
            child: Image.asset("assets/images/img.png",height: 111,width: 157,),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 180),
            child: Container(
              height: 700,

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(30),
                    topLeft: Radius.circular(30)

                )
              ),

              child: SingleChildScrollView(
                child: Column(


                  children: [
                    SizedBox(height:60 ),
                    Text("WELCOME BACK!",textAlign:TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 26,
                        color: Colors.black),
                      ),
                    SizedBox(height: 20,),
                    SizedBox(
                      height: 48,
                      width: 300,
                      child: TextFormField(

                        decoration: InputDecoration(

                         filled: true,
                          fillColor: Colors.white,
                            prefixIcon: Icon(Icons.mail),
                            labelText: "Email Id",

                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),


                          )
                        )

                      ),
                    ),
                    SizedBox(height: 20,),
                    SizedBox(
                      height: 48,
                      width: 300,
                      child: TextFormField(

                          decoration: InputDecoration(

                              filled: true,
                              fillColor: Colors.white,
                              prefixIcon: Icon(Icons.key),
                              labelText: " password",

                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),


                              )
                          )

                      ),
                    ),
                Row(
                  children: [
                    Checkbox(value: check, onChanged: (check) {  },),
                    Text("Remember me"),
                    SizedBox(width: 50,),
                    TextButton(onPressed: (){}, child: Text("Forgot Password?",))

                  ],
                ),
                 SizedBox(height: 20,),
                    SizedBox(
                      height: 48,
                      width: 300,
                      child: ElevatedButton(onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  Homepage()),
                        );

                      }, child: Text("LOGIN",style: TextStyle(color: Color(0xffD9D9D9),fontWeight: FontWeight.bold,fontSize: 16,letterSpacing: 1),),
                        style: ElevatedButton.styleFrom(elevation: 6,backgroundColor: Color(0xff1C3C3A),shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10.0) )),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 30),
                      child: Text("or"),
                    ),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 12,left: 150),
                        child: Container(
                          height: 38,
                          width: 96,
                          child: Image.asset("assets/images/img_1.png",height: 38,width: 96,),
                        ),
                        ),
                          ] ),

                        SizedBox(height: 30,),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 50),
                          child: Text("Dont have an account?"),

                        ),
                        SizedBox(width: 7,),
                        TextButton(onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  Last()),
                          );
                        }, child: Text("Sighnup"))

                      ],
                    ),


                  ],

                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
