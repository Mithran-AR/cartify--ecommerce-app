import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:myproject/profile.dart';
import 'package:myproject/wishlist.dart';

import '../cart.dart';
import '../home.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});


  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int currentindex=0;
  List<Widget>pages=[
    Home(),
    Wishlist(),
    Mycart(),
    Profile(),

  ];

  void onItemTapped(int index){
    setState(() {
      currentindex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentindex],


   bottomNavigationBar: BottomNavigationBar(
     elevation: 10,
  backgroundColor: Color(0xff317773),
     selectedItemColor: Colors.white,
     unselectedItemColor: Colors.grey,
     type: BottomNavigationBarType.fixed,


     onTap: onItemTapped,



     items: [
       BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
       BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Wishlist"),
       BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "MyCart"),
       BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),

   ],),


    );
  }
}
class Homee extends StatefulWidget {
  const Homee({super.key});

  @override
  State<Homee> createState() => _HomeeState();
}

class _HomeeState extends State<Homee> {
  final List<String>banners=[
    "assets/images/img_2.png",
    "assets/images/img_3.png",
    "assets/images/img_4.png"



  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/images/img.png",color: Color(0xff317773),height: 40,width: 40,),
        centerTitle: true,
        actions: [
          InkWell(child: Icon(Icons.search,color: Color(0xff317773),size: 30,),

          )

        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 220,
              child:Center(
                child:CarouselSlider.builder(itemCount: banners.length,
                    itemBuilder: (BuildContext context, int index, int pageViewIndex) =>
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  banners[index],
                                ),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),

                  options: CarouselOptions(
                    height: 140,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    scrollDirection: Axis.horizontal,
                  ),

                ) ,
            ),
            )
          ],
        ),
      ),

    );
  }
}
// class Wishlist extends StatefulWidget {
//   const Wishlist({super.key});
//
//   @override
//   State<Wishlist> createState() => _WishlistState();
// }
//
// class _WishlistState extends State<Wishlist> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//     );
//   }
// }
// class MyCart extends StatefulWidget {
//   const MyCart({super.key});
//
//   @override
//   State<MyCart> createState() => _MyCartState();
// }
//
// class _MyCartState extends State<MyCart> {
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       backgroundColor: Colors.white,
//     );
//   }
// }
// class Profile extends StatefulWidget {
//   const Profile({super.key});
//
//   @override
//   State<Profile> createState() => _ProfileState();
// }
//
// class _ProfileState extends State<Profile> {
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       backgroundColor: Colors.white,
//     );
//   }
// }




