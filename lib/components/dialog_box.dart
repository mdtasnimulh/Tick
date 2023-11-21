import 'package:flutter/material.dart';
import 'package:flutter_todo/components/my_button.dart';

class DialogBox extends StatelessWidget {

  final dynamic controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({super.key, required this.controller, required this.onSave, required this.onCancel,});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[600],
      content: SizedBox(
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add new task.",
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(text: "Save", onPressed: onSave),
                const SizedBox(width: 8,),
                MyButton(text: "Cancel", onPressed: onCancel),
              ],
            )
          ],
        ),
      ),
    );
  }
}
