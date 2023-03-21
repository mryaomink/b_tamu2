import 'package:b_tamu/pages/yao_form.dart';
import 'package:b_tamu/pages/yao_sukses.dart';
import 'package:b_tamu/pages/yao_upload.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Buku Tamu Diskominfo BJB',
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      initialRoute: 'bukutamu',
      routes: {
        'bukutamu': (context) => const YaoForm(),
        'uploadfile': (context) => const YaoUpload(),
        'sukses': (context) => const YaoSukses(),
        'yaochoice': (context) => const MyTextField(),
      },
    );
  }
}
