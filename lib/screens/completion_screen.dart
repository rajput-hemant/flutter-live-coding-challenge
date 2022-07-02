import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CompletionScreen extends StatelessWidget {
  static const routename = '/completion_screen';
  final String name;

  const CompletionScreen({super.key, this.name = ''});

  @override
  Widget build(BuildContext context) {
    final name = ModalRoute.of(context)!.settings.arguments as String;
    var headerText = RichText(
      text: TextSpan(
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        children: [
          const TextSpan(text: 'Hi, '),
          TextSpan(
            text: name,
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          )
        ],
      ),
    );
    var bodyText = RichText(
      text: TextSpan(
        style: const TextStyle(fontSize: 20, color: Colors.black),
        children: [
          const TextSpan(
              text:
                  'You have successfully completed Hybrid Mobile App Development Course.\n\n',
              style: TextStyle(fontWeight: FontWeight.w700)),
          const TextSpan(
            text: 'INSTRUCTOR NAME\n',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: 'Pankaj Kapoor\n',
            style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              headerText,
              const SizedBox(height: 10),
              Image.asset('assets/images/certificate.jpg'),
              const SizedBox(height: 60),
              bodyText,
              const SizedBox(height: 20),
              Text(
                'Date: ${DateFormat.yMMMd().format(DateTime.now())}',
                textAlign: TextAlign.right,
                style: const TextStyle(fontWeight: FontWeight.w800),
              )
            ],
          ),
        ),
      ),
    );
  }
}
