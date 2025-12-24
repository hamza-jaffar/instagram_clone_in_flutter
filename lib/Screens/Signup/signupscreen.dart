import 'package:flutter/material.dart';
import 'package:instagram_clone/Screens/BottomNav/bottomnav.dart';
import 'package:instagram_clone/Screens/Login/loginscreen.dart';
import 'package:instagram_clone/Widgets/uihelper.dart';

class SignupScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Uihelper.CustomImage(imgUrl: "logo_txt.png"),
            SizedBox(height: 15),
            Uihelper.CustomTextField(
              controller: emailController,
              text: "Email",
              toHide: false,
              textinputType: TextInputType.text,
            ),
            SizedBox(height: 15),
            Uihelper.CustomTextField(
              controller: passwordController,
              text: "Password",
              toHide: true,
              textinputType: TextInputType.visiblePassword,
            ),
            SizedBox(height: 15),
            Uihelper.CustomTextField(
              controller: usernameController,
              text: "Username",
              toHide: true,
              textinputType: TextInputType.text,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 22),
                  child: Uihelper.CustomTextButton(
                    text: "Forgot Password?",
                    callback: () {},
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Uihelper.CustomButton(text: "Sign up", callback: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavScreen()));
            }),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?"),
                Uihelper.CustomTextButton(text: "Login", callback: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                }),
              ],
            ),
          ],
        ),
      ),
    );;
  }
}
