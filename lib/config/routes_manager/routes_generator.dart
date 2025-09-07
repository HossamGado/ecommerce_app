import 'package:ecommerce_app/config/routes_manager/routes.dart';
import 'package:ecommerce_app/features/auth/presentation/screens/sign_in_screen.dart';
import 'package:ecommerce_app/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:ecommerce_app/features/cart/presentation/screens/cart_screen.dart';
import 'package:ecommerce_app/features/main_layout/presentation/screens/main_layout_screen.dart';
import 'package:ecommerce_app/features/product_details/presentation/screens/product_details.dart';
import 'package:ecommerce_app/features/products/presentation/screens/products_screen.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.cartRoute:
        return MaterialPageRoute(builder: (context) => const CartScreen());
      case Routes.mainRoute:
        return MaterialPageRoute(
          builder: (context) => const MainLayoutScreen(),
        );
      case Routes.productDetails:
        return MaterialPageRoute(builder: (context) => const ProductDetails());
      case Routes.productScreenRoute:
        return MaterialPageRoute(builder: (context) => const ProductsScreen());
      case Routes.signInRoute:
        return MaterialPageRoute(builder: (context) => const SignInScreen());
      case Routes.signUpRoute:
        return MaterialPageRoute(builder: (context) => const SignUpScreen());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text("No Route Found")),
        body: Center(child: const Text("No Route Found")),
      ),
    );
  }
}
