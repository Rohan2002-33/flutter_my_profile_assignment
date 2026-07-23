import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Profile',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        backgroundColor: Colors.deepPurple.shade100,
        foregroundColor: Colors.black87,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.phone),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            ProfileItem(
              icon: Icons.icecream,
              label: 'Ice cream is very delicious right?',
            ),
            SizedBox(height: 40),
            ProfileItem(
              icon: Icons.code,
              label: 'Programming is not boring if you love it',
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const ProfileItem({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Container(
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.deepPurple.shade50,
              boxShadow: [
                BoxShadow(
                  color: Colors.deepPurple.withOpacity(0.2),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Icon(
              icon,
              size: 40,
              color: Colors.deepPurple,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}