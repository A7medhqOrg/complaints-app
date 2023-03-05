import 'package:complaints/views/auth.dart';
import 'package:complaints/views/home.dart';
import 'package:complaints/views/loading.dart';
import 'package:complaints/views/main_layout.dart';
import 'package:complaints/views/message_detailes.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
          useMaterial3: true,
          scaffoldBackgroundColor: const Color(0xfff7f6ff),
          appBarTheme: const AppBarTheme(
              elevation: 0, backgroundColor: Color(0xfff7f6ff))),
      routes: {
        LoadingScreen.id: (context) => const LoadingScreen(),
        HomeScreen.id: (context) => const HomeScreen(),
        AuthScreen.id: (context) => const AuthScreen(),
        MainLayout.id: (context) => const MainLayout(),
        MessageDetailsScreen.id: (context) => const MessageDetailsScreen(),
      },
    );
  }
}
