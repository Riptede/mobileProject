import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Web/mobile 1app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            Image.asset(
              'images/Vector.png',
            ),
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),

                  filled: true, // разрешить заполнение
                  fillColor: const Color.fromARGB(248, 241, 241, 241),
                  hintText: 'Введите название секции или кружка',
                  hintStyle: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.037,
                      color: Colors.grey),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(
                      left: 15.0,
                    ),
                    child: Image.asset('images/Search.png'),
                  ), // иконка изображения
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Image.asset(
                'images/Frame 305.png',
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
