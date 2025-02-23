import 'package:final_hackathon_app/controllers/nav_bar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavBar extends StatelessWidget {
  NavBar({super.key});
  NavBarController navBarController = Get.put(NavBarController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavBarController>(
      builder: (context) {
        return Scaffold(
          body: navBarController.displayPage(),
          bottomNavigationBar: GNav(
            
              selectedIndex: navBarController.selectedTab,
              onTabChange: (index) {
                navBarController.changeTab(index);
              },
              activeColor: Colors.redAccent,
              padding: EdgeInsets.all(10),
              tabMargin: EdgeInsets.all(8),
              tabBorderRadius: 15,
              tabs: [
                GButton(icon: Icons.home, text: 'Home',backgroundColor: Colors.redAccent.shade100,textColor: Colors.black,),
                GButton(icon: Icons.account_circle, text: 'Profile',backgroundColor: Colors.redAccent.shade100,textColor: Colors.black,),
                GButton(icon: Icons.shopping_bag, text: 'Cart',backgroundColor: Colors.redAccent.shade100,textColor: Colors.black,),
                GButton(icon: Icons.chat, text: 'Chat',backgroundColor: Colors.redAccent.shade100,textColor: Colors.black,),
                
              ]),
        );
      }
    );
  }

}
