import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shoesly/core/styles/app_colors.dart';
import 'package:shoesly/core/styles/app_sizes.dart';
import 'package:shoesly/core/styles/text_styles.dart';
import 'package:shoesly/presentation/provider/conectivity_provider.dart';
import 'package:shoesly/presentation/widgets/general_text_button.dart';

/* 
This screen shows availability of internet
 */
class NoInternetScreen extends StatefulWidget {
  const NoInternetScreen({super.key});

  @override
  State<NoInternetScreen> createState() => _NoInternetScreenState();
}

class _NoInternetScreenState extends State<NoInternetScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Consumer(builder: (_, ref, __) {
        final provider = ref.watch(connectivityController);
        return Scaffold(
          backgroundColor: AppColors.primaryColor,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSizes.paddingLg),
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Image.asset(
                    //   ImageConstants.noInternet,
                    //   height: 160.h,
                    //   // color: AppColors.lightPrimaryColor,
                    // ),
                    const SizedBox(
                      height: AppSizes.padding * 4,
                    ),
                    Text(
                      "No Connection",
                      style: generalTextStyle(18).copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: AppSizes.padding,
                    ),
                    Text(
                      "It appears that you are not connected to the internet at the moment.",
                      textAlign: TextAlign.center,
                      style: generalTextStyle(16).copyWith(
                        color: Colors.white.withOpacity(0.9),
                      ),
                    ),
                    const SizedBox(
                      height: AppSizes.padding * 4,
                    ),
                    GeneralTextButton(
                      key: const Key("try_again"),
                      fgColor: Colors.white,
                      borderColor: Colors.white,
                      marginH: 0,
                      onPressed: () {
                        if (provider.isOnline) {
                          if (provider.count == 1) {
                            Navigator.pop(context);
                          } else if (provider.count > 1) {
                            Navigator.popUntil(
                                context, (_) => (provider.count-- <= 0));
                          }
                          provider.resetCounter();
                        }
                      },
                      isSmallText: true,
                      title: "Try Again",
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
