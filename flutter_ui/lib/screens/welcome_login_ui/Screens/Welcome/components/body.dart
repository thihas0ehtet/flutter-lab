import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_ui/screens/welcome_login_ui/Screens/Login/login_screen.dart';
import 'package:my_ui/screens/welcome_login_ui/Screens/Signup/signup_screen.dart';
import 'package:my_ui/screens/welcome_login_ui/Screens/Welcome/components/background.dart';
import 'package:my_ui/screens/welcome_login_ui/components/componets.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "WELCOME LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.05),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
            ),
            RoundedButton(
              text: "SIGN UP",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
