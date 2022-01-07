import 'package:doctor_ui_desing_ed/constants.dart';
import 'package:doctor_ui_desing_ed/screens/auth/sing_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'auth/sing_in_Screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset(
            "assets/icons/splash_bg.svg",
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                children: [
                  Spacer(),
                  Center(
                    child: Text(
                      "Doc UI",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (contex) => SingUpScreen(),
                        ),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xFF6cd8d1),
                      ),
                      child: Text("Registrate"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: defaultPadding * 1.2),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (contex) => SingInScreen(),
                        ),
                      ),
                        style: TextButton.styleFrom(
                          // backgroundColor: Color(0xFF6cd8d1),
                          elevation: 0,
                          backgroundColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 2,
                              color: Color(0xFF6cd8d1),
                            ),
                          ),
                        ),
                        child: Text("Incia Sesion"),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: defaultPadding * 2,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
