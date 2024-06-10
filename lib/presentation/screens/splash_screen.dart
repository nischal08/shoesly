import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoesly/core/styles/app_sizes.dart';
import 'package:shoesly/core/styles/text_styles.dart';
import 'package:shoesly/core/values/constants/image_constants.dart';
import 'package:shoesly/presentation/provider/conectivity_provider.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _onInit();
  }

  _onInit() async {
    await ref.read(connectivityController).monitorConnection();
    // final splashController = ref.watch(splashProvider);
    // await splashController.call();
    // if (mounted) {
    //   if (splashController.hasAppToken) {
    //     context.go(AppRoutes.homeRoute);
    //   } else {
    //     context.go(AppRoutes.loginRoute);
    //   }
    // }
  }

  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image(
              width: 200.w,
              image: const AssetImage(ImageConstants.logoImage),
            ),
            gapH(10),
            Text(
              "Splash Screen",
              style: generalTextStyle(16).copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
