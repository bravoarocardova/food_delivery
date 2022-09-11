import 'package:flutter/material.dart';
import 'package:food_delivery/app/routes/app_pages.dart';
import 'package:get/get.dart';

class LoginTab extends StatelessWidget {
  const LoginTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              style: const TextStyle(
                fontFamily: 'SFProTextSemibold',
              ),
              decoration: InputDecoration(
                labelText: 'Email address',
                labelStyle: TextStyle(
                  color: const Color(0xFF000000).withOpacity(0.4),
                ),
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF000000), width: 2),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF000000), width: 2),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              style: const TextStyle(
                fontFamily: 'SFProTextSemibold',
              ),
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(
                  color: const Color(0xFF000000).withOpacity(0.4),
                ),
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF000000), width: 2),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF000000), width: 2),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Forgot passcode?',
                style: TextStyle(fontFamily: 'SFProTextSemibold'),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.offAllNamed(Routes.HOME),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 25,
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontFamily: 'SFProTextSemibold',
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
