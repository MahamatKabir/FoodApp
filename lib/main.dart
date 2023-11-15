import 'package:flutter/material.dart';
//import 'package:foodapp/auth/sign_in.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:foodapp/auth/sign_in.dart';
import 'package:foodapp/config/colors.dart';
import 'package:foodapp/providers/product_provider.dart';
import 'package:foodapp/screen/Home_screen/home_screen.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ProductProvider>(
      create: (context) => ProductProvider(),
      child: MaterialApp(
          theme: ThemeData(
            primaryColor: primaryColor,
            scaffoldBackgroundColor: scaffoldBackgroundColor,
          ),
          debugShowCheckedModeBanner: false,
          home: HomeScreen()),
    );
  }
}
