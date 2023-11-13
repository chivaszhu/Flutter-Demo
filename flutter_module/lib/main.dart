import 'package:flutter/material.dart';
import 'package:flutter_module/login/login.dart';

void main() => runApp(const MyApp());
Map<String, WidgetBuilder> routes = {
  "home": (context)=> const Home(),
  "login": (context)=> const Login()
};
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Driver App',
        initialRoute: 'home',
        routes: routes

    );
  }}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Text("abc");
  }
}


