import 'package:flutter/material.dart';
import 'package:machinetesttwo/controller/provider/dropdown_prov.dart';
import 'package:machinetesttwo/controller/provider/login_prov.dart';
import 'package:machinetesttwo/view/login_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LoginProv(),
        ),
         ChangeNotifierProvider(
          create: (context) => DropProv(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
