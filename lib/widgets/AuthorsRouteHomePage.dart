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
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/jpg/bg.jpg'), fit: BoxFit.cover),
            ),
          child: Padding(
              padding: EdgeInsets.fromLTRB(1, 180, 1, 2),
              child: SafeArea(
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        children: <Widget>[
                          Container(
                            color: Colors.white24,
                            child: Text('яндекс карта', style: theme.textTheme.bodyLarge,),
                          ), // Yandex map API there
                          const SizedBox(height: 126,),
                          //TODO: REST API
                          Expanded(
                            child: DecoratedBox(
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Color.fromARGB(215, 217, 217, 217)),
                              child: ListView.builder(
                              itemCount: 5,
                              itemBuilder: (context, index) => ListTile(
                                title: Text('Название подборки'),
                                subtitle: Text('описание'),
                                ),
                              ),
                            ),
                          ), // Routes list
                          const SizedBox(height: 16,),
                          InkWell(
                            child: Container(
                              child: Center(child: Text('Создать маршрут'), ),
                            ),
                          ),
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