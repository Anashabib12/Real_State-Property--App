import 'package:flutter/material.dart';
import 'package:property_app/components/customHeading.dart';
import 'package:property_app/components/customLogo.dart';
import 'package:property_app/components/customTextfield.dart';
import 'package:property_app/screens/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(builder: (context, constraints) {
        return Column(
          children: [
            SizedBox(
              height: constraints.maxHeight * 0.08,
            ),
            Center(
              child: SizedBox(
                  height: constraints.maxHeight * 0.18,
                  width: constraints.maxWidth * 0.65,
                  child: Image.asset('assets/logo/logo.png')),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.02,
            ),
            CustomHeading(
                text: 'Login to Your Account',
                fontSize: constraints.maxWidth * 0.08,
                color: const Color(0xFF0F2F44),),
            SizedBox(
              height: constraints.maxHeight * 0.02,
            ),
            CustomTextfield(
                prefixIcons: const Icon(Icons.email_rounded),
                width: constraints.maxWidth * 0.9),
            SizedBox(
              height: constraints.maxHeight * 0.02,
            ),
            CustomTextfield(
              prefixIcons: const Icon(Icons.lock_rounded),
              width: constraints.maxWidth * 0.9,
              suffixIcons: const Icon(Icons.remove_red_eye_rounded),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.check_box_rounded,
                  color: Colors.blue,
                  size: constraints.maxWidth * 0.085,
                ),
                SizedBox(
                  width: constraints.maxWidth * 0.024,
                ),
                Text(
                  'Remember me',
                  style: TextStyle(
                      fontSize: constraints.maxWidth * 0.042,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: constraints.maxHeight * 0.02,
            ),
            SizedBox(
              width: constraints.maxWidth * 0.9,
              height: constraints.maxHeight * 0.067,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 25, 139, 239)),
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: constraints.maxWidth * 0.04,
                        fontWeight: FontWeight.w700),
                  )),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.02,
            ),
            Text(
              'Forgot the password?',
              style: TextStyle(
                  color: const Color.fromARGB(255, 25, 139, 239),
                  fontSize: constraints.maxWidth * 0.04,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.025,
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: constraints.maxWidth * 0.055),
                  child: const Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                )),
                Text(
                  'or continue with',
                  style: TextStyle(
                      fontSize: constraints.maxWidth * 0.042,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
                Expanded(
                    child: Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: constraints.maxWidth * 0.055),
                  child: const Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                )),
              ],
            ),
            SizedBox(
              height: constraints.maxHeight * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomLogo(
                    height: constraints.maxHeight * 0.09,
                    width: constraints.maxWidth * 0.25,
                    image: 'assets/logo/fb.png',
                    height2: constraints.maxHeight * 0.09,
                    width2: constraints.maxWidth * 0.15),
                CustomLogo(
                    height: constraints.maxHeight * 0.09,
                    width: constraints.maxWidth * 0.25,
                    image: 'assets/logo/google.png',
                    height2: constraints.maxHeight * 0.08,
                    width2: constraints.maxWidth * 0.12),
                CustomLogo(
                    height: constraints.maxHeight * 0.09,
                    width: constraints.maxWidth * 0.25,
                    image: 'assets/logo/apple.png',
                    height2: constraints.maxHeight * 0.07,
                    width2: constraints.maxWidth * 0.1)
              ],
            ),
            SizedBox(
              height: constraints.maxHeight * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account?',
                  style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: constraints.maxWidth * 0.04,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: constraints.maxWidth * 0.018,
                ),
                Text(
                  'Sign up',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 25, 139, 239),
                      fontSize: constraints.maxWidth * 0.04,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ],
        );
      }),
    );
  }
}
