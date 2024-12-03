import 'package:myproject/hh/homepage.dart';
import 'package:myproject/trackorder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'home.dart';

class Successpage extends StatefulWidget {
  const Successpage({super.key});

  @override
  State<Successpage> createState() => _SuccesspageState();
}

class _SuccesspageState extends State<Successpage> with SingleTickerProviderStateMixin {
  double _iconSize = 300;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(seconds: 1));
    _controller.addListener(() {
      setState(() {
        _iconSize = 130.0;
      });
    });
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff317773),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 258, left: 80),
              child: AnimatedSize(
                duration: Duration(seconds: 1),
                curve: Curves.easeInOut,
                child: Icon(
                  Icons.check_circle_sharp,
                  size: _iconSize,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 80),
              child: Text(
                "ORDER CONFIRMED!",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Sen",
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 160,),
            Padding(
              padding: const EdgeInsets.only(left: 75),
              child: SizedBox(
                height: 48,
                width: 250,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Trackorder()),
                    );
                  },
                  child: Text(
                    "Track Order",
                    style: TextStyle(
                      color: Color(0xffD9D9D9),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      letterSpacing: 1,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 6,
                    backgroundColor: Color(0xff1C3C3A),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 75),
              child: SizedBox(
                height: 48,
                width: 250,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Homepage()),
                    );
                  },
                  child: Text(
                    "Home",
                    style: TextStyle(
                      color: Color(0xff1C3C3A),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      letterSpacing: 1,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 6,
                    backgroundColor: Color(0xffD9D9D9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
