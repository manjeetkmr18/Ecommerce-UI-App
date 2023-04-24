import 'package:ecom_group_project/screens/home/home_screen.dart';
import 'package:ecom_group_project/screens/register/registerScreen.dart';
import 'package:flutter/widgets.dart';

import '../screens/cart/cart_screen.dart';
import '../screens/login/login_screen.dart';
import '../screens/products/products_screen.dart';
import '../screens/profile/profile_screen.dart';
import '../screens/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {

  SplashScreen.routeName: (context) => const SplashScreen(),
  LoginScreen.routeName: (context) => const LoginScreen(),
  RegisterScreen.routeName: (context) => const RegisterScreen(),
  HomePage.routeName: (context) => const HomePage(),
  ProductsScreen.routeName: (context) => const ProductsScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
  CartScreen.routeName: (context) => const CartScreen(),
};