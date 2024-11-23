import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AuthorsRouteHomePage extends StatelessWidget {
  const AuthorsRouteHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme  = Theme.of(context);
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: DecoratedBox(
            decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/jpg/bg.jpg'), fit: BoxFit.cover),
            ),
          child: Padding(
              padding: const EdgeInsets.fromLTRB(1, 20, 1, 2),
              child: SafeArea(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('pressed my profile')));
                            },
                            child: Row(
                              children: [
                                Container(child: const Icon(Icons.face_retouching_natural, color: Colors.white, size: 50,) ),
                                Text('Мой профиль', style: theme.textTheme.bodyLarge,)
                              ],
                            ),
                          ),
                          const Spacer(),
                          //TODO: REST API
                          SizedBox(
                            height: 450,
                            child: DecoratedBox(
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: const Color.fromARGB(215, 217, 217, 217)),
                              child: ListView.builder(
                              itemCount: 5,
                              itemBuilder: (context, index) => const ListTile(
                                title: Text('Название подборки'),
                                subtitle: Text('описание'),
                                ),
                              ),
                            ),
                          ), // Routes list
                          const SizedBox(height: 16,),
                          SizedBox(
                            width: double.infinity, // Указываем ширину для SizedBox
                            child: InkWell(
                              onTap: () {
                                // Сначала показываем SnackBar, затем переходим на другой экран
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text('Создать маршрут pressed')),
                                );
                                Navigator.of(context).pushNamed('/add-route');
                              },
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  children: [
                                    const SizedBox(height: 10),
                                    Image.asset('assets/jpg/plus.jpg'),
                                    const SizedBox(height: 10),
                                    const Text(
                                      'Создать маршрут',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )

                        ],
                      ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}