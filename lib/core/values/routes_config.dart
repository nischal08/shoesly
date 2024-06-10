import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shoesly/core/values/constants/app_routes.dart';
import 'package:shoesly/presentation/screens/error_screen.dart';
import 'package:shoesly/presentation/screens/home/home_screen.dart';
import 'package:shoesly/presentation/screens/login_screen.dart';
import 'package:shoesly/presentation/screens/no_internet_screen.dart';
import 'package:shoesly/presentation/screens/register_screen.dart';
import 'package:shoesly/presentation/screens/wrapper.dart';

GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();
final GoRouter routerConfig = GoRouter(
  initialLocation: AppRoutes.wrapperRoute,
  navigatorKey: navKey,
  routes: [
    GoRoute(
      name: "Wrapper",
      path: AppRoutes.wrapperRoute,
      builder: (context, state) => const Wrapper(),
    ),
    // GoRoute(
    //   name: "Splash Screen",
    //   path: AppRoutes.splashRoute,
    //   builder: (context, state) => const SplashScreen(),
    //   // redirect: (context, state) {
    //   //Above context is not usable for navigating
    //   // Future.delayed(const Duration(seconds: 2)).then(
    //   //   (value) {
    //   //     navKey.currentState!.context.go(AppRoutes.homeRoute);
    //   //   },
    //   // );
    //   // return null;
    //   // if (userIsNotLoggedIn){
    //   //   return "/login";
    //   // }
    //   // return "/";
    //   // },
    // ),
    GoRoute(
      name: "Home Screen",
      path: AppRoutes.homeRoute,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      name: "Login Screen",
      path: AppRoutes.loginRoute,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      name: "Register Screen",
      path: AppRoutes.registerRoute,
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(
      name: "No Internet Screen",
      path: AppRoutes.noInternetRoute,
      builder: (context, state) => const NoInternetScreen(),
    ),
  ],
  errorBuilder: (context, state) => const ErrorScreen(),
);
