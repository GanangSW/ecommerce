import 'package:e_commerce/models/models.dart';
import 'package:e_commerce/view/view.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    debugPrint('This is route: ${settings.name}');

    switch (settings.name) {
      case HomeView.routeName:
        return HomeView.route();
      case CartView.routeName:
        return CartView.route();
      case CatalogView.routeName:
        return CatalogView.route(category: settings.arguments as Category);
      case WishlistView.routeName:
        return WishlistView.route();
      case ProductView.routeName:
        return ProductView.route();
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: '/error'),
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
      ),
    );
  }
}
