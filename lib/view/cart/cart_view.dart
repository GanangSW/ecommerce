import 'package:e_commerce/widget/widgets.dart';
import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  static const String routeName = '/cart';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const CartView(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'Cart'),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
