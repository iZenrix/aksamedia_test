import 'package:aksamedia_test/app/core/theme/text_theme.dart';
import 'package:aksamedia_test/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aksamedia Test',
      theme: ThemeData(
        useMaterial3: true,
        textTheme: buildTextTheme(),
      ),
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
    );
  }
}
