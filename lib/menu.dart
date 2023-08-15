import 'package:flutter/material.dart';
import 'package:komerce/theme.dart';

class Ikon extends StatelessWidget {
  final String ikon;

  const Ikon({
    Key? key,
    required this.ikon,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[600],
        borderRadius: BorderRadius.circular(12),
      ),
      margin: EdgeInsets.symmetric(horizontal: 24),
      child: Center(
        child: Text(
          ikon,
          style: tittleText,
        ),
      ),
    );
  }
}
