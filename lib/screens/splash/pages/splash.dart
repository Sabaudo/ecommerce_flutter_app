import 'package:clot_ecommerce/core/configs/assets/app_vectors.dart';
import 'package:clot_ecommerce/core/configs/theme/app_colors.dart';
import 'package:clot_ecommerce/screens/login/pages/signin/signin.dart';
import 'package:clot_ecommerce/screens/splash/bloc/splash_cubit.dart';
import 'package:clot_ecommerce/screens/splash/bloc/splash_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, SplashState>(
      listener: (context, state) {
        if (state is Unauthenticated) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const Signin()),
          );
        }
      },
      child: Scaffold(
        backgroundColor: AppColors.primary,
        body: Center(child: SvgPicture.asset(AppVectors.appLogo)),
      ),
    );
  }
}
