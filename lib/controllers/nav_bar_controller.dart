import 'package:final_hackathon_app/Views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavBarController extends GetxController{
  int selectedTab = 0;

  void changeTab(int index){
    selectedTab = index;
    update();
  }
  
  displayPage(){
    if(selectedTab == 0){
      return HomeScreen();
    }else if(selectedTab == 1){
      return Container();
    }else if(selectedTab == 2){
      return Container();
    }else if(selectedTab == 3){
      return Container();
    }
  }
}