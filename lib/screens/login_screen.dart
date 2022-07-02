import 'package:flutter/material.dart';

import 'completion_screen.dart';
import '../widgets/text_field_builder.dart';

class LoginScreen extends StatefulWidget {
  static const routename = '/login_screen';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();

  var text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Get Your Certificate",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            // Text(
            //   'Login',
            //   style: TextStyle(
            //     color: Theme.of(context).colorScheme.primary,
            //     fontSize: 24,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
            Image.asset('assets/images/login.webp'),
            // const SizedBox(height: 20),
            TextFieldBuilder(
              icon: const Icon(Icons.account_circle_sharp),
              labelText: "Enter your Name",
              textType: TextInputType.name,
              controller: nameController,
            ),
            const SizedBox(height: 20),
            TextFieldBuilder(
              icon: const Icon(Icons.email),
              labelText: 'Enter your Email',
              textType: TextInputType.emailAddress,
              controller: emailController,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  nameController.text.isEmpty || emailController.text.isEmpty
                      ? text = 'Please fill all fields properly!'
                      : Navigator.pushNamed(context, CompletionScreen.routename,
                          arguments: nameController.text);
                });
              },
              style: ElevatedButton.styleFrom(
                elevation: 10,
                minimumSize: const Size(200, 60),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
              child: const Text(
                'Login',
                style: TextStyle(fontSize: 24),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Text(
                text.isEmpty ? "" : text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 22,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
