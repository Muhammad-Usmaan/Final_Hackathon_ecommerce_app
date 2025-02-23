import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginSignupController extends GetxController {
  //Login tab controllers
  TextEditingController LoginEmailController = TextEditingController();
  final TextEditingController LoginPasswordController = TextEditingController();
  // Signup tab controllers
  final TextEditingController SignupNameController = TextEditingController();
  TextEditingController SignupEmailController = TextEditingController();
  final TextEditingController SignupPasswordController = TextEditingController();


// Login Logics
loginUser()async{
  try {
  final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: LoginEmailController.text,
    password: LoginPasswordController.text
  );
} on FirebaseAuthException catch (e) {
  if (e.code == 'user-not-found') {
    print('No user found for that email.');
  } else if (e.code == 'wrong-password') {
    print('Wrong password provided for that user.');
  }
}
}

// Signup Logics
signupUser()async{
  try {
  final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: SignupEmailController.text,
    password: SignupPasswordController.text,
  );
} on FirebaseAuthException catch (e) {
  if (e.code == 'weak-password') {
    print('The password provided is too weak.');
  } else if (e.code == 'email-already-in-use') {
    print('The account already exists for that email.');
  }
} catch (e) {
  print(e);
}
}


// Login or signup using google
googleLogin(){}


// Logout
signOut()async{
  await FirebaseAuth.instance.signOut();
}

}
