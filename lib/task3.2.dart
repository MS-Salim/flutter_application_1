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
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xff0f1115),
      ),
      home: const ConnectScreen(),
    );
  }
}

class ConnectScreen extends StatelessWidget {
  const ConnectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 250,
                color: const Color(0xff1d2026),
                child: const Center(
                  child: Icon(Icons.people_alt_outlined, size: 80, color: Colors.blue),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Let's Connect With Us!", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
                    const SizedBox(height: 20),
                    const Text("Email Address", style: TextStyle(color: Colors.white)),
                    const SizedBox(height: 8),
                    TextField(decoration: InputDecoration(filled: true, fillColor: const Color(0xff1d2026), border: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: BorderSide.none))),
                    const SizedBox(height: 16),
                    const Text("Password", style: TextStyle(color: Colors.white)),
                    const SizedBox(height: 8),
                    TextField(obscureText: true, decoration: InputDecoration(filled: true, fillColor: const Color(0xff1d2026), border: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: BorderSide.none))),
                    const SizedBox(height: 20),
                    SizedBox(width: double.infinity, child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.blue, padding: const EdgeInsets.symmetric(vertical: 16)), onPressed: () {}, child: const Text("Login", style: TextStyle(color: Colors.white)))),
                    const SizedBox(height: 20),
                    OutlinedButton(style: OutlinedButton.styleFrom(padding: const EdgeInsets.symmetric(vertical: 14)), onPressed: () {}, child: const Row(mainAxisAlignment: MainAxisAlignment.center, children: [Icon(Icons.apple), SizedBox(width: 8), Text("Sign up with Apple")])),
                    const SizedBox(height: 12),
                    OutlinedButton(style: OutlinedButton.styleFrom(padding: const EdgeInsets.symmetric(vertical: 14)), onPressed: () {}, child: const Row(mainAxisAlignment: MainAxisAlignment.center, children: [Icon(Icons.g_mobiledata), SizedBox(width: 8), Text("Sign up with Google")])),
                    const SizedBox(height: 20),
                    Center(child: TextButton(onPressed: () {}, child: const Text("Don't have an account? Sign up", style: TextStyle(color: Colors.blue)))),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}