import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:komerce/theme.dart';

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
            Row(
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
            SizedBox(
              height: 21,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsetsDirectional.all(30),
              decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(),
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
