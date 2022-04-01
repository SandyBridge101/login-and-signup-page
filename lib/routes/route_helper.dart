import 'package:deliver/pages/auth/sign_up_page.dart';
import 'package:deliver/pages/auth/login_page.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const String signupPage = "/sign-up-page";

  static String getInitial() => "$LoginPage";
  static String getSignUpPage() => "$signupPage";

  static List<GetPage> routes = [
    //GetPage(name: initial, page: () => SignUpPage()),
    GetPage(name: signupPage, page: () => SignUpPage()),
  ];
}
