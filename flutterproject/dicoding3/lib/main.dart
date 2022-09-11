import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Custom & Google Fonts';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: MainPage(),
      );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final style = TextStyle(fontSize: 62, fontWeight: FontWeight.bold);
  final italic = TextStyle(
      fontSize: 30, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(MyApp.title),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'THIS',
                style: GoogleFonts.abhayaLibre(
                  textStyle: italic,
                ),
              ),
              Text(
                'IS',
                style: GoogleFonts.oswald(
                  textStyle: style,
                ),
              ),
              Text(
                'GOOGLE',
                style: GoogleFonts.lato(
                  textStyle: style,
                  fontStyle: FontStyle.italic,
                  color: Colors.red,
                ),
              ),
              Text(
                'Custom Font',
                style: TextStyle(
                  fontFamily: 'AkayaTelivigala',
                  fontSize: 48,
                ),
              ),
              Text(
                'Custom Font',
                style: TextStyle(
                  fontFamily: 'AkayaTelivigala',
                  fontSize: 48,
                ),
              ),
            ],
          ),
        ),
      );
}
