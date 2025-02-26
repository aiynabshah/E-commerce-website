import 'package:get/get.dart';
import 'package:intern_project/view/homescreen.dart';
import 'package:intern_project/view/login_view.dart';

class AppPages {
  static const loginPage = "/";
  static const String homePage = "/home";

  static List<GetPage> getPages = [
    GetPage(name: loginPage, page: () => MyLogin()),
    GetPage(name: homePage, page: () => HomeScreen())
  ];
}
