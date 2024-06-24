// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables, sized_box_for_whitespace, must_be_immutable

import 'package:flutter/material.dart';

import 'my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;

  VoidCallback onsave;
  VoidCallback oncancel;

  DialogBox(
      {super.key,
      required this.controller,
      required this.onsave,
      required this.oncancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.grey[100],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //get user input
            TextField(
              controller: controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Add a new task"),
            ),

            //button save +cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //save btn
                MyButton(
                  text: "save",
                  onpressed: onsave,
                ),

                const SizedBox(
                  width: 10,
                ),
                //cancel btn
                MyButton(
                  text: "cancel",
                  onpressed: oncancel,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
