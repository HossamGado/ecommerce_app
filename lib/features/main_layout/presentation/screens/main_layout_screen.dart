import 'package:ecommerce_app/core/utils/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class MainLayoutScreen extends StatelessWidget {
  const MainLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: const CustomAppBar());
  }
}
