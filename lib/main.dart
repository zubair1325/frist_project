import 'package:flutter/material.dart';
void main(){
  runApp(const Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      // themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.amber
      ),
      // darkTheme: ThemeData(+
      //   brightness: Brightness.dark,
      // ),


    );
  }

}


