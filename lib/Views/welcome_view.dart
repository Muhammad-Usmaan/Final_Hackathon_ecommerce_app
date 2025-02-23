import 'package:flutter/material.dart';

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
                  Text('Farmhouse'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Large"),
                      Text('|'),
                      Text("\$89"),
                    ],
                  ),
                  Container(
                    width: 200,
                    child: Text(
                        'Tomato, Mozzarella, Green basil, Olives, Bell pepper',
                        
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
                      onPressed: () {},
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
