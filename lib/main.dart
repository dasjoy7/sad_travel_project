import 'package:flutter/material.dart';
import 'pages/signinpage.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://khndhahqblpkqslkhpsk.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImtobmRoYWhxYmxwa3FzbGtocHNrIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTczNDM5ODYsImV4cCI6MjA3MjkxOTk4Nn0.vJ52Lkxsy97Db3OkuL4-Pt7gVgyi7lFouGYiAjjSgRQ',
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Discover BD',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SignInPage(),
    );
  }
}
