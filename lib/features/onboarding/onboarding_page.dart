// ignore_for_file: non_constant_identifier_names

import 'dart:developer';

import 'package:financy_app/common/constants/app_colors.dart';
import 'package:financy_app/common/constants/app_text_styles.dart';
import 'package:financy_app/common/widgets/multi_text_button.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.iceWhite,
      body: Column(
        children: [
          const SizedBox(height: 64.0),
          Expanded(
            flex: 2,
            child: Image.asset('assets/images/onboarding_image.png'),
          ),
          _buildTitleText('Spend Smarter'),
          _buildTitleText('Save More'),
          const SizedBox(height: 16.0),
          Padding(
            padding: const EdgeInsets.only(
                left: 32.0, right: 32.0, top: 16.0, bottom: 4.0),
            child: PrimaryButton(
              text: 'Get Started',
              onPressed: () {},
            ),
          ),
          const SizedBox(height: 16.0),
          MultiTextButton(
            onPressed: () => log('Sign Up'),
            children: [
              Text(
                'Already have an account? ',
                style: AppTextStyles.smallText.copyWith(color: AppColors.grey),
              ),
              Text(
                'Log In',
                style: AppTextStyles.smallText
                    .copyWith(color: AppColors.greelightTwo),
              ),
            ],
          ),
          const SizedBox(height: 64.0),
        ],
      ),
    );
  }

  Widget _buildTitleText(String text) {
    return Text(
      text,
      style: AppTextStyles.mediumText.copyWith(color: AppColors.greelightTwo),
    );
  }
}

class PrimaryButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;

  const PrimaryButton({
    super.key,
    this.onPressed,
    required this.text,
  });

  static const BorderRadius _borderRadius =
      BorderRadius.all(Radius.circular(24.0));

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: _borderRadius,
      onTap: onPressed,
      child: Ink(
        decoration: const BoxDecoration(
          borderRadius: _borderRadius,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: AppColors.greenGradient,
          ),
        ),
        child: Container(
          alignment: Alignment.center,
          height: 48.0,
          child: Text(
            text,
            style: AppTextStyles.mediumText18.copyWith(color: AppColors.white),
          ),
        ),
      ),
    );
  }
}
