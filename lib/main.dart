import 'package:browser_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:adaptive_theme/adaptive_theme.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // возвращает AdaptiveTheme, чтобы применять темы
    
    return AdaptiveTheme(
      light: kLightTheme,
      dark: kDarkTheme,
      initial: AdaptiveThemeMode.light,
      builder: (light, dark) => MaterialApp(
        theme: light,
        darkTheme: dark,
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: const MyHomePage(),
      ),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //theme button (light, dark, system)
      floatingActionButton: FloatingActionButton(onPressed: () => AdaptiveTheme.of(context).toggleThemeMode(),
      tooltip: 'Сменить тему',
      child: const Icon(Icons.sunny,)),
        appBar: AppBar(
            title: Text('Открыть браузер', style: TextStyle(color: Theme.of(context).primaryColor),),
            ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(110, 200, 80, 80),
            child: Wrap(
              children: <Widget>[
               // go to browser
                ElevatedButton(
                  onPressed: () async {
                    var url = Uri.parse('https://friflex.com');
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url, mode:LaunchMode.externalApplication);
                    } else {
                      throw 'Невозможно загрузить $url';
                    }
                  }, child:  Text('Открыть браузер', style: TextStyle(color: Theme.of(context).primaryColor))     
                  ),
                ],
            ),
          ),
        ));
  }
}
