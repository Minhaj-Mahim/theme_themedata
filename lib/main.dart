import 'package:flutter/material.dart';

void main(){
  runApp(liveclass1_m7App_theme_themedata());
}

class liveclass1_m7App_theme_themedata extends StatelessWidget {
  const liveclass1_m7App_theme_themedata({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Minhajs App',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: Colors.amber,
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            elevation: 6,
            textStyle: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.6,
              wordSpacing: 0.5,
            ),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            textStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            foregroundColor: Colors.deepOrange,
          ),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.pink,
          elevation: 5,
          shadowColor: Colors.green,
        ),
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            fontSize: 18,
          ),
          bodySmall: TextStyle(
            fontSize: 10,
          ),
          bodyLarge: TextStyle(
            fontSize: 22,
          ),
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey,
          elevation: 5,
          ///shadowColor: Colors.amberAccent,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: Colors.amber,
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            elevation: 6,
            textStyle: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.6,
              wordSpacing: 0.5,
            ),
          ),
        ),
      ),
      themeMode: ThemeMode.dark,
    );
  }
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Theme&ThemeData"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello World!'),
            Text('Hello World!',style: Theme.of(context).textTheme.bodySmall,),
            Text('Hello World!',style: Theme.of(context).textTheme.bodyLarge,),
            Text('Hello World!',style: Theme.of(context).textTheme.headlineLarge,),
            TextButton(onPressed: (){}, child: Text('Tap here')),
            TextButton(onPressed: (){}, child: Text('Tap here')),
            TextButton(onPressed: (){}, child: Text('Tap here')),
            TextButton(onPressed: (){}, child: Text('Tap here')),
            ElevatedButton(onPressed: (){}, child: Text('Tap here')),
            ElevatedButton(onPressed: (){}, child: Text('Tap here')),
          ],
        ),
      ),
    );
  }
}

