import 'package:flutter/material.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: const Text("Password"),
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                controller: passwordController,
                onChanged: (value) {
                  //i want to check every time user is typing so how?
                  formKey.currentState!.validate();

                  // easy to understand just ask yourself!!
                  // we want to ask is the currentState of formKey
                  //is validate or not so formKey.currentState!.validator()
                },

                decoration: InputDecoration(
                  enabledBorder: AppInputBorder.getOutLinedBorder(),
                  hintText: "Enter Password",
                  labelText: "Password",
                  border: AppInputBorder.getOutLinedBorder(),
                ),
                validator: (value) {
                  if (value!.length <= 6 || value.length <= 12) {
                    return "Password is not valid";
                  } else if (value.length >= 12) {
                    return "Password is too long";
                  }
                  return null;
                },
              ),
              SizedBox(height: 60),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    //  print("Valid");
                  }
                },
                child: const Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AppInputBorder {
  static getOutLinedBorder({
    Color color = Colors.black,
    double width = 1,
    BorderStyle style = BorderStyle.solid,
    double radius = 1,
  }) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color, width: 1, style: style),
      borderRadius: BorderRadius.circular(radius),
    );
  }
}
