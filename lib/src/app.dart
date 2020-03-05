
import 'package:flutter/material.dart';

import 'package:flutter_app/src/pages/Logeo.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build( context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center ( 
        child: InicioSesion(),
      ),
    );
  }
}
