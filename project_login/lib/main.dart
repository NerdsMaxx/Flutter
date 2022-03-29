import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  debugPaintSizeEnabled = false;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static const double textFontSize = 25.0;
  static const double widthSizeBox = 300.0;
  static const double heightSizeBox = 250.0;
  static const double heightSizeBoxSpace = 1;
  static const double heightSizeBoxTextField = 35;
  static const double hintTextFontSize = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 150),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/logo.png'),
            const SizedBox(height: heightSizeBoxSpace + 8),
            Center(
              child: SizedBox(
                width: widthSizeBox,
                height: heightSizeBox,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    //eu acho que pode colocar <widget> para ficar mais seguro
                    Text(
                      'Usuário',
                      style: TextStyle(
                        fontSize: textFontSize,
                      ),
                    ),
                    SizedBox(
                      height: heightSizeBoxTextField,
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Digite seu usuário.',
                            hintStyle: TextStyle(
                              fontSize: hintTextFontSize,
                            )),
                      ),
                    ),
                    SizedBox(height: heightSizeBoxSpace),
                    Text(
                      'Senha',
                      style: TextStyle(
                        fontSize: textFontSize,
                      ),
                    ),
                    SizedBox(
                      height: heightSizeBoxTextField,
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Digite sua senha.',
                            hintStyle: TextStyle(
                              fontSize: hintTextFontSize,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
