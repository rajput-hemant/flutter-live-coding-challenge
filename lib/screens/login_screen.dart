import 'package:flutter/material.dart';

import 'completion_screen.dart';
import '../widgets/text_field_builder.dart';

class LoginScreen extends StatelessWidget {
  static const routename = '/login_screen';
  final nameController = TextEditingController();
  final emailController = TextEditingController();

  LoginScreen({Key? key}) : super(key: key);

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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
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
              labelText: "Student Name",
              textType: TextInputType.name,
              controller: nameController,
            ),
            const SizedBox(height: 20),
            TextFieldBuilder(
              icon: const Icon(Icons.email),
              labelText: 'Student Email',
              textType: TextInputType.emailAddress,
              controller: emailController,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(
                  context, CompletionScreen.routename,
                  arguments: nameController.text),
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
            )
          ],
        ),
      ),
    );
  }
}
