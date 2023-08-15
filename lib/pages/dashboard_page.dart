import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:komerce/theme.dart';
import 'package:komerce/menu.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home), label: 'Beranda'),
        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.list_bullet), label: 'Log Aktivitas'),
        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.profile_circled), label: 'Profile'),
      ]),
      backgroundColor: orangeColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Halo Arief,',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: whiteColor,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Selamat Datang !',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: whiteColor),
                      )
                    ],
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(40)),
                    padding: EdgeInsets.all(12),
                    child: Icon(
                      Icons.notifications_none_rounded,
                      color: Color(0xff626262),
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 21,
            ),
            Container(
              width: double.infinity,
              height: 500,
              padding: EdgeInsetsDirectional.all(24),
              decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30),
                  )),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: orangeColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    width: 327,
                    height: 109,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 25.5,
                        ),
                        Text('data')
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xfffFBA63C),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    width: 327,
                    height: 65,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [Ikon(ikon: 'm')],
                      ),
                      Column(
                        children: [Ikon(ikon: 'm')],
                      ),
                      Column(
                        children: [Ikon(ikon: 'm')],
                      ),
                      Column(
                        children: [Ikon(ikon: 'm')],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
