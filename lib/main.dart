import 'package:flutter/material.dart';
import 'package:starbahk_mart/Widgets/NavBarWidget.dart';
import 'package:starbahk_mart/Pages/HomePage.dart';
import 'package:supabase_flutter/supabase_flutter.dart';




Future<void> main() async {
    const url= 'https://hzscqpenvagzbhxlemwt.supabase.co';
const anonKey ='eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imh6c2NxcGVudmFnemJoeGxlbXd0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzA5NjU5MjAsImV4cCI6MjA0NjU0MTkyMH0.zMfFzjy30HlNQPq-OixXmR2jryKn5Vag__84NZMChEg';

await Supabase.initialize(url: url, anonKey: anonKey);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Starbhak Mart',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white
      ),
      routes: {
        '/': (context) => NavBarWidget(),
      },

    );
  }
}