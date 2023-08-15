import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 250,
              ),
              Image.asset(
                'assets/images/logo.png',
                width: 182,
                height: 67.69,
              ),
              // SizedBox(
              //   height: 10.31,
              // ),
              Text(
                'my.komerce.id',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffB3B3B3)),
              )
            ],
          ),
        ),
      )),
    );
  }
}
