import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intern_project/model/login_model.dart';
import 'package:intern_project/utils/app_routes/app_pages.dart';


class LoginController extends GetxController {
   var user= UserModel(name:"", reg: "").obs;

  final  emailController = TextEditingController().obs;
  final  passwordController = TextEditingController().obs;
  final  confirmPasswordController = TextEditingController().obs;

  final nameController = TextEditingController().obs;

Future<void> signUp() async {
  if (passwordController.value.text != confirmPasswordController.value.text) {
    Get.snackbar("Error", "Passwords do not match");
    return;
  }

  try {
    // Create user with email and password using Firebase Authentication
    UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: emailController.value.text.trim(),
      password: passwordController.value.text.trim(),
    );

    // After successful user creation, store user info (email, name) in Firestore
    User? user = userCredential.user;
    if (user != null) {
      // Prepare the user data for Firestore
      await FirebaseFirestore.instance.collection('users').doc(user.uid).set({
        'uid':user.uid,
         // Assuming you have a TextEditingController for name
        'email': emailController.value.text.trim(),
        'password': passwordController.value.text, // Placeholder for additional data like registration number
      });

      // Show success message
      Get.snackbar("Success", "Account Created");

      // Navigate to the home screen after account creation
      Get.offAndToNamed(AppPages.homePage);
    }
  } on FirebaseAuthException catch (e) {
    // Handle specific Firebase authentication errors
    Get.snackbar("Error", e.message ?? "An error occurred during sign-up");
  }
}


  Future<void> login() async {
    try {
      // Sign in user with Firebase Authentication
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.value.text.trim(),
        password: passwordController.value.text.trim(),
      );

      // After successful login, create a custom UserModel if needed
      user.value = UserModel(name: emailController.value.text, reg: "SomeRegistrationInfo");

      Get.snackbar("Success", "Logged in successfully");
      Get.offAndToNamed("/home"); // Navigate to home screen after login
    } on FirebaseAuthException catch (e) {
      Get.snackbar("Error", e.message ?? "An error occurred");
    }
  }
}
