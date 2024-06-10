import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoesly/core/styles/themes.dart';
import 'package:shoesly/core/values/routes_config.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyBo4VibWvA9_rf9jpdfpcO3VlaNcmk4Hr0",
        appId: "1:460018044537:android:928814d354b51ff40a8ea8",
        messagingSenderId: "460018044537",
        projectId: "shoesly-429a3"),
  );
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          routerConfig: routerConfig,
          builder: (context, child) {
            return Overlay(
              initialEntries: [
                if (child != null) ...[
                  OverlayEntry(
                    builder: (context) => child,
                  )
                ]
              ],
            );
          },
          debugShowCheckedModeBanner: false,
          title: 'Learnsic',
          theme: theme,
        );
      },
    );
  }
}
