import 'package:flutter/material.dart';
import 'package:komerce/ui/widgets/custom_buttom_navigation_item.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationItem(),
    );
  }
}
