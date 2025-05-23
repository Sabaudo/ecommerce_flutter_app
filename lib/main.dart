import 'package:clot_ecommerce/core/configs/theme/app_theme.dart';
import 'package:clot_ecommerce/firebase_options.dart';
import 'package:clot_ecommerce/screens/splash/bloc/splash_cubit.dart';
import 'package:clot_ecommerce/screens/splash/pages/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return BlocProvider(
    create: (context) => SplashCubit()..appStarted(),
     child: MaterialApp(
      theme: AppTheme.appTheme,
      debugShowCheckedModeBanner: false,
      home: SplashPage(
     
      ),
     ),
   );
  }
}

