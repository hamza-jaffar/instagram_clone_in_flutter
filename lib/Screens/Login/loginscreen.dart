import 'package:flutter/material.dart';
import 'package:instagram_clone/Widgets/uihelper.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
            Uihelper.CustomButton(text: "Login", callback: () {}),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Uihelper.CustomImage(imgUrl: "facebook.png"),
                Uihelper.CustomTextButton(
                  text: "Log in with facebook",
                  callback: () {},
                ),
              ],
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 343,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Divider(color: Colors.grey.shade800, thickness: 1)),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text("OR"),
                  ),
                  Expanded(child: Divider(color: Colors.grey.shade800, thickness: 1)),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?"),
                Uihelper.CustomTextButton(text: "Signup", callback: () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
