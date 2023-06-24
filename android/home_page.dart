
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String name = "Simple Calculator";

  double a=1;

  double b=11;

  double c=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: (true),
        title: const Text(
          "Simple Calculator",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      drawer: const Drawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              a.toString(),
              style:const  TextStyle(fontSize: 30),
            ),
            Text(
              b.toString(),
              style: const TextStyle(fontSize: 30),
            ),
            Text(
              c.toString(),
              style: const TextStyle(fontSize: 30),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                GestureDetector(

                    onTap: (){
                      c+=a+b;
                      setState((){

                      });
                    },
                    child: Image.asset(
                      "asset/plus.png",
                      height: 90,
                      width: 90,
                    )),
                GestureDetector(
                    onTap: (){
                      c+=a-b;
                      setState((){

                      });
                    },
                    child: Image.asset(
                      "asset/min.png",
                      height: 90,
                      width: 80,
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                    onTap: (){
                      c+=a*b;
                      setState((){

                      });
                    },
                    child: Image.asset(
                      "asset/mul.jpg",
                      height: 90,
                      width: 90,
                    )),
                GestureDetector(
                    onTap: (){
                      c+=(a/b);
                      setState((){

                      });
                    },
                    child: Image.asset(
                      "asset/div.png",
                      height: 80,
                      width: 90,
                    ))
              ],
            ),

          ],
        ),
      ),
    );
  }
}
