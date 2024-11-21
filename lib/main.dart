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
          bodyLarge: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),
        ),
        appBarTheme: AppBarTheme(iconTheme: IconThemeData(color: Colors.white))
      ),
      routes: {
        '/': (context) => const AuthorsRouteReg(),
        '/login': (context) => const AuthorsRouteLogin()
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
                    Text(
                      'Войти или зарегестрироваться',
                      style: theme.textTheme.bodyLarge,
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Имя',
                          labelStyle: theme.textTheme.bodyMedium,
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                          fillColor: const Color.fromARGB(255, 217, 217, 217),
                          filled: true
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Пароль',
                          labelStyle: theme.textTheme.bodyMedium,
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                          fillColor: const Color.fromARGB(255, 217, 217, 217),
                          filled: true
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Пароль',
                          labelStyle: theme.textTheme.bodyMedium,
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                          fillColor: const Color.fromARGB(255, 217, 217, 217),
                          filled: true
                      ),
                    ),
                    // TODO: Checking for an empty field
                    const SizedBox(height: 16),
                    Container(
                      height: 50,
                      width: 390,
                      child: DecoratedBox(
                          decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(20)),
                          child: Center(child: Text('Зарегестрироваться', style: theme.textTheme.bodyLarge))
                      ),
                    ),
                    const SizedBox(height: 16),
                    InkWell(
                      child: Container(
                        height: 50,
                        width: 390,
                        child: Center(child: Text('У меня есть аккаунт!', style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal))),
                      ),
                      onTap: () {
                        Navigator.of(context).pushNamed('/login');
                      },
                    ),
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

class AuthorsRouteLogin extends StatelessWidget {
  const AuthorsRouteLogin ({super.key});

  @override
  Widget build(BuildContext context) {
    final theme  = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black, title: Text('Авторизация', style: theme.textTheme.bodyLarge,),
      ),
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
                    Text(
                      'Войти или зарегестрироваться',
                      style: theme.textTheme.bodyLarge,
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Имя',
                          labelStyle: theme.textTheme.bodyMedium,
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                          fillColor: const Color.fromARGB(255, 217, 217, 217),
                          filled: true
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Пароль',
                          labelStyle: theme.textTheme.bodyMedium,
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                          fillColor: const Color.fromARGB(255, 217, 217, 217),
                          filled: true
                      ),
                    ),
                    // TODO: Checking for an empty field
                    const SizedBox(height: 16),
                    Container(
                      height: 50,
                      width: double.infinity,
                      child: DecoratedBox(
                          decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(20)),
                          child: Center(child: Text('Войти', style: theme.textTheme.bodyLarge))
                      ),
                    ),
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