import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myproject/last.dart';
import 'package:myproject/wellcome.dart';

class Sighnup extends StatefulWidget {
  const Sighnup({super.key});

  @override
  State<Sighnup> createState() => _SighnupState();
}

class _SighnupState extends State<Sighnup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF317773),
      body:  Stack(

      children: [


     Padding(
       padding: const EdgeInsets.only(top: 150,
       left: 115),
       child: Image.asset("assets/images/img.png",height: 185,width: 172,),
     ),

        Padding(
          padding: const EdgeInsets.only(top: 540),
          child: Container(

            height: 309,
           width: MediaQuery.sizeOf(context).width,

            decoration: BoxDecoration(
                color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30)
              )
            ),

            


            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              

              children: [
                Text("HELLO!",style: TextStyle(fontWeight: FontWeight.bold,
                ),),
                SizedBox(height: 40,),


            

                Padding(

                  padding:  EdgeInsets.only(),


                  child:

                  ElevatedButton(onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  Wellcome()),
                    );
                  }, child: Text("LOGIN",style: TextStyle(color: Color(0xffD9D9D9),fontWeight: FontWeight.bold,fontSize: 16,letterSpacing: 1),),
                    style: ElevatedButton.styleFrom(elevation: 6,backgroundColor: Color(0xff1C3C3A),shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10.0) )),
                  ),
                ),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  Last()),
                  );
                }, child: Text("SIGN UP",style: TextStyle(color: Color(0xff1C3C3A),fontWeight: FontWeight.bold,fontSize: 16,letterSpacing: 1),),
                  style: ElevatedButton.styleFrom(elevation: 6,shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10.0) )),
                ),
              ],
            ),
          ),
        )
      ],)
    );
  }
}

