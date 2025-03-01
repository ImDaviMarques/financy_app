import 'dart:developer';

import 'package:financy_app/common/constants/app_colors.dart';
import 'package:financy_app/common/constants/app_text_styles.dart';
import 'package:financy_app/common/widgets/custom_text_form_field.dart';
import 'package:financy_app/common/widgets/multi_text_button.dart';
import 'package:financy_app/features/onboarding/onboarding_page.dart';

import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Text(
          'Spend Smarter',
          textAlign: TextAlign.center,
          style: AppTextStyles.mediumText.copyWith(
            color: AppColors.greelightTwo,
          ),
        ),
        Text(
          'Save More',
          textAlign: TextAlign.center,
          style: AppTextStyles.mediumText.copyWith(
            color: AppColors.greelightTwo,
          ),
        ),
        Image.asset(
          'assets/images/sign_up_image.png',
        ),
        Form(
            child: Column(
          children: [
            CustomTextFormField(
              labelText: "your name",
              hintText: "John Doe",
              padding: null,
            )
          ],
        )),
        Padding(
          padding: const EdgeInsets.only(
              left: 32.0, right: 32.0, top: 16.0, bottom: 4.0),
          child: PrimaryButton(
            text: 'Sign Up',
            onPressed: () => log('Sign Up'),
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
      ],
    ));
  }
}


