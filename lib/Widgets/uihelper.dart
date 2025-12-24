import 'package:flutter/material.dart';

class Uihelper {
  static CustomTextField({
    required TextEditingController controller,
    required String text,
    required bool toHide,
    required TextInputType textinputType,
  }) {
    return Container(
      height: 44,
      width: 343,
      decoration: BoxDecoration(
        color: Color(0XFF121212),
        border: Border.all(color: Colors.white24),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: TextField(
          controller: controller,
          obscureText: toHide,
          keyboardType: textinputType,
          decoration: InputDecoration(
            // contentPadding: EdgeInsetsGeometry.,
            hintText: text,
            hintStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.normal,
              color: Color(0XFFFFFFFF),
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }

  static CustomImage({required String imgUrl}) {
    return Image.asset("assets/images/$imgUrl");
  }

  static CustomTextButton({
    required String text,
    required VoidCallback callback,
  }) {
    return TextButton(
      onPressed: () {
        callback();
      },
      child: Text(
        text,
        style: TextStyle(color: Color(0Xff3797EF), fontSize: 14),
      ),
    );
  }

  static CustomButton({required String text, required VoidCallback callback}) {
    return SizedBox(
      height: 50,
      width: 343,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0XFF3797EF),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        onPressed: () {
          callback();
        },
        child: Text(text, style: TextStyle(fontSize: 14, color: Colors.white)),
      ),
    );
  }
}
