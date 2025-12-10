import 'package:flutter/material.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: List.generate(
            4,
            (i) => Card(
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                leading: CircleAvatar(backgroundColor: Colors.green.shade100),
                title: Text('Post ${i + 1}'),
                subtitle: const Text('Community post content...'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
