import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(AuthorsRouteApp());

class AuthorsRouteApp extends StatelessWidget {
  const AuthorsRouteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AuthorsRouteApp',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        useMaterial3: true,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: Color.fromARGB(255, 118, 118, 118),
            fontSize: 25,
            fontWeight: FontWeight.bold,

          ),
        ),
      ),
      routes: {
        '/': (context) => const AuthorsRouteReg(),
      },
    );
  }
}

class AuthorsRouteReg extends StatelessWidget {
  const AuthorsRouteReg ({super.key});
  @override
  Widget build(BuildContext context) {
    final theme  = Theme.of(context);
    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/jpg/bg.jpg'), fit: BoxFit.cover)
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(1, 180, 1, 2),
          child: SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 16 ),
                child: Column(
                  children: <Widget>[
                    const Text(
                      'Войти или зарегестрироваться',
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Имя',
                          labelStyle: theme.textTheme.bodyMedium,
                          border: OutlineInputBorder(),
                          fillColor: const Color.fromARGB(255, 217, 217, 217),
                          filled: true
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Пароль',
                          labelStyle: theme.textTheme.bodyMedium,
                          border: OutlineInputBorder(),
                          fillColor: const Color.fromARGB(255, 217, 217, 217),
                          filled: true
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Пароль',
                          labelStyle: theme.textTheme.bodyMedium,
                          border: OutlineInputBorder(),
                          fillColor: const Color.fromARGB(255, 217, 217, 217),
                          filled: true
                      ),
                    ),
                    // TODO: Checking for an empty field
                    const SizedBox(height: 16),

                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}