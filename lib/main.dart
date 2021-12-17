import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:release_app/controllers/country_controller.dart';
import 'package:release_app/services/country_service.dart';
import 'package:release_app/ui/pages/country_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.lazyPut<CountryService>(() => CountryService());
  Get.lazyPut<CountryController>(() => CountryController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Consulta de paises',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Woolha.com Flutter Tutorial'),
          backgroundColor: Colors.teal,
        ),
        body: Column(
          children: const [
            CountryPage(),
          ],
        ),
      ),
    );
  }
}
