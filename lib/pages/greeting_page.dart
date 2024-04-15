import 'package:flutter/material.dart';

class GreetingPage extends StatefulWidget {
  const GreetingPage({super.key});

  @override 
  State<GreetingPage> createState() => _GreetingPageState();
}

class _GreetingPageState extends State<GreetingPage> {
  // Variable/s
  TextEditingController textEditingController = TextEditingController();
  String greetingMessage = "";

  // Method/s
  void greetUser() {
    setState(() {
      greetingMessage = "Hello, " + textEditingController.text;
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
              // Greet the user
              Text(greetingMessage),

              TextField(
                controller: textEditingController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Type your name"
                ),
              ),
          
              ElevatedButton(
                onPressed: greetUser, 
                child: Text("Tap me!")
              )
            ],
          ),
        )
      ),
    );
  }
}