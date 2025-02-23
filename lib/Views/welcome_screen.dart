import 'package:final_hackathon_app/Views/on_boarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.25,
                child: Image.asset(
                  '../assets/images/Welcome_screen_back.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Positioned(
              top: 90,
              child: Container(
                height: 250,
                child: Image.asset('../assets/images/Farmhouse_pizza.png'),
              ),
            ),
            Positioned(
              top: 350,
              child: Column(
                spacing: 10,
                children: [
                  Text('Farmhouse',
                  
                  style: GoogleFonts.poppins(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 5,
                    children: [
                      Text("Large",
                  
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),),
                      Text('|'),
                      Text("\$89",
                  
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),),
                    ],
                  ),
                  Container(
                    width: 200,
                    child: Text(
                        'Tomato, Mozzarella, Green basil, Olives, Bell pepper',
                        
                  
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    
                    color: Colors.grey
                  ),
                        
                        textAlign: TextAlign.center,),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(255, 87, 87, 1),
                          Color.fromRGBO(255, 214, 135, 1)
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,  
                      ),
                      borderRadius: BorderRadius.circular(
                          50), // Match this to your button's shape
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(()=>OnBoardingScreen());
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      ),
                      child: Text('Shop'),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
