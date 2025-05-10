import 'package:flutter/material.dart';
import 'package:flutter_application_1/counter_screen.dart';
import 'package:flutter_application_1/favourite_class.dart';
import 'package:flutter_application_1/favourite_screen.dart';
import 'package:flutter_application_1/note_app.dart';
import 'package:flutter_application_1/provider_class.dart';
import 'package:flutter_application_1/slider_class.dart';
import 'package:flutter_application_1/slider_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CounterProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => SliderClass(),
        ),
        ChangeNotifierProvider(
          create: (context) => FavouriteClass(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: NoteApp(),
      ),
    );
  }
}
