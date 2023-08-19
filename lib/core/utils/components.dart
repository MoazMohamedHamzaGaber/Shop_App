import 'package:flutter/material.dart';

Widget textFormField({
  required String text,
  required TextInputType type,
  required TextEditingController controller,
  bool isObscureText=false,
}) =>
    TextFormField(
      style: const TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
      obscureText: isObscureText,
      keyboardType: type,
      controller: controller,
      decoration: InputDecoration(
          label: Text(
            text,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 20,
            ),
          )),
    );


Widget customLoadingView()=>const Center(child: CircularProgressIndicator());