import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:storage_management_system/app_router.dart';
import 'package:storage_management_system/controller/authentication/authentication_cubit.dart';
import 'package:storage_management_system/view/wrapper.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter = AppRouter();
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Storage Management System',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.grey,
        ),
        onGenerateRoute: appRouter.generateRoute);
  }
}