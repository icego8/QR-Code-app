import 'package:flutter/material.dart';
import 'package:qr_code/generator.dart';
import 'package:qr_code/scanner.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "QR scanner generator",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue)
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyAppHome(),
    );
  }
}
class MyAppHome extends StatelessWidget{
  const MyAppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("QR App",
              style: TextStyle(color: Colors.blue,fontSize: 60,fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 200,
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> scanner()));
                },
                child: const Text("scanner",style: TextStyle(fontSize: 20),)
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> generator()));
                },
                child: const Text("generator",style: TextStyle(fontSize: 20),)
            ),
          ],
        ),
      ),
    );
  }

}