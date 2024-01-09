import 'package:flutter/material.dart';
import 'package:to_do_app/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onSave;
  final VoidCallback onCancel;

  const DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(5), // Set your desired border radius here
      ),
      content: SizedBox(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //get user input
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a new task!",
              ),
            ),

            //buttons --> save + cancel
            Row(
              children: [
                //save button
                MyButton(text: "Save", onPressed: onSave),

                const Spacer(),
                //cancel button
                MyButton(text: "Cancel", onPressed: onCancel)
              ],
            )
          ],
        ),
      ),
    );
  }
}
