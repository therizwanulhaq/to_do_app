import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  //text editing controller to get access to what the user typed
  TextEditingController myControlller = TextEditingController();

//greeting message
  String greetingMessage = "";

//greet user method
  void greetUser() {
    String userName = myControlller.text;
    setState(() {
      greetingMessage = "Hello, $userName";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //greeting message
              Text(greetingMessage),

              //textfield
              TextField(
                controller: myControlller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Type yo name",
                ),
              ),

              //button
              ElevatedButton(
                onPressed: greetUser,
                child: const Text("Tap"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
