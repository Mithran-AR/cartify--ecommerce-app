import 'package:myproject/checkout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_sharp,
            color: Color(0xFF317773),
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Checkout()));
          },
        ),
        centerTitle: true,
        title: Text(
          "Payment Method",
          style: TextStyle(
            color: Color(0xff2C2D2E),
            fontWeight: FontWeight.bold,
            fontFamily: "Sen",
            fontSize: 20,
          ),
        ),
      ),
      body: SafeArea(child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                height: 80,
                width: 306,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5)
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: ListTile(
                    leading: Icon(Icons.radio_button_checked,color: Color(0xff317773),),
                    title: Text("UPI",
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontWeight: FontWeight.bold,
                        fontFamily: "Sen",
                        fontSize: 14,
                      ),),
                    trailing: IconButton(onPressed: () {
                      //Navigator.push(context, MaterialPageRoute(builder: (context) => Upi()));

                    }, icon: Icon(Icons.keyboard_arrow_down,size: 35,color: Color(0xff317773),),),
                  ),
                ),

              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                height: 80,
                width: 306,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5)
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: ListTile(
                    leading: Icon(Icons.radio_button_off_outlined,color: Color(0xff317773),),
                    title: Text("Credit / Debit Card",
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontFamily: "Sen",
                        fontSize: 14,
                      ),),
                    trailing: IconButton(onPressed: () {  }, icon: Icon(Icons.keyboard_arrow_down,size: 35,color: Color(0xff317773),),),
                  ),
                ),

              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                height: 80,
                width: 306,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5)
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: ListTile(
                    leading: Icon(Icons.radio_button_off_outlined,color: Color(0xff317773),),
                    title: Text("Net Banking",
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontFamily: "Sen",
                        fontSize: 14,
                      ),),
                    trailing: IconButton(onPressed: () {  }, icon: Icon(Icons.keyboard_arrow_down,size: 35,color: Color(0xff317773),),),
                  ),
                ),

              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                height: 80,
                width: 306,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5)
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: ListTile(
                    leading: Icon(Icons.radio_button_off_outlined,color: Color(0xff317773),),
                    title: Text("Cash On Delivery",
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontFamily: "Sen",
                        fontSize: 14,
                      ),),
                  ),
                ),

              ),
            ),

            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 20),
              child: Container(
                height: 40,
                width: 300,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: const Color(0xffD9D9D9),
                    backgroundColor: const Color(0xff317773),
                    shadowColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ), // foreground
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Save",
                    style: TextStyle(
                        fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}