import 'package:flutter/material.dart';
import 'package:food_delivery/app/modules/login/views/tabs/login_tab.dart';
import 'package:food_delivery/core/theme/color_theme.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xFFF2F2F2),
        appBar: AppBar(
          toolbarHeight: 200,
          backgroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          title: Center(
            child: Image.asset(
              'assets/images/logo_hd.png',
              fit: BoxFit.contain,
            ),
          ),
          elevation: 0.5,
          bottom: PreferredSize(
            preferredSize: const Size(20, 20),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: const TabBar(
                labelPadding: EdgeInsets.symmetric(vertical: 16),
                splashBorderRadius: BorderRadius.all(Radius.circular(20)),
                splashFactory: NoSplash.splashFactory,
                indicatorColor: ColorTheme.primaryColor,
                indicatorWeight: 3,
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: [
                  Text(
                    'Login',
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    'Sign-up',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            const LoginTab(),
            Container(),
          ],
        ),
      ),
    );
  }
}
