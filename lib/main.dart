import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:intern_project/utils/app_routes/app_pages.dart';
import 'package:intern_project/view/homescreen.dart';
import 'view/login_view.dart'; 

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb)
  { await  Firebase.initializeApp(options:FirebaseOptions( apiKey: "AIzaSyCwrbKa8tDIdg_Mtj9gCr0K-giS8wIwgYA",
  authDomain: "e-commerce-26ea3.firebaseapp.com",
  projectId: "e-commerce-26ea3",
  storageBucket: "e-commerce-26ea3.firebasestorage.app",
  messagingSenderId: "672814674603",
  appId: "1:672814674603:web:b86bb36c57995c20653dee"));

  }
 else{
  await  Firebase.initializeApp();
 }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Login Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: AppPages.loginPage,
      getPages:AppPages.getPages,
  
      debugShowCheckedModeBanner: false,
    );
  }
}

