import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter.dart';
import 'research.dart';
import 'donate_page.dart';
import 'home_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (_) => Counter(), child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Booxie',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF00B389),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF00B389)),
        fontFamily: 'Siemreap',
        scaffoldBackgroundColor: const Color(0xFFF2FDF5),
      ),
      home: const HomePage(),
      routes: {
        '/details': (context) => const DetailsPage(),
        '/research': (context) => const Research(),
        '/donate': (context) => const DonatePage(),
      },
    );
  }
}

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = context.watch<Counter>();

    return Scaffold(
      appBar: AppBar(title: const Text('Details')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Counter (details): ${counter.value}',
                style: const TextStyle(fontSize: 24)),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: counter.increment,
              child: const Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}
