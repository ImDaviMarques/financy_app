import 'dart:developer';

import 'package:financy_app/common/constants/app_colors.dart';
import 'package:financy_app/common/constants/app_text_styles.dart';
import 'package:financy_app/common/utils/uppercase_text_formatter.dart';
import 'package:financy_app/common/widgets/custom_text_form_field.dart';
import 'package:financy_app/common/widgets/multi_text_button.dart';
import 'package:financy_app/common/widgets/password_form_field.dart';
import 'package:financy_app/features/onboarding/onboarding_page.dart';

import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Text(
          'Spend Smarter',
          textAlign: TextAlign.center,
          style: AppTextStyles.mediumText.copyWith(
            color: AppColors.greenTwo,
          ),
        ),
        Text(
          'Save More',
          textAlign: TextAlign.center,
          style: AppTextStyles.mediumText.copyWith(
            color: AppColors.greenTwo,
          ),
        ),
        Image.asset(
          'assets/images/sign_up_image.png',
        ),
        Form(
            key: _formKey,
            child: Column(
              children: [
                CustomTextFormField(
                  labelText: "your name",
                  hintText: "JOHN DOE",
                  inputFormatters: [
                    UpperCaseTextInputFormatter(),
                  ],
                  validator: (value) {
                    print(value);
                    return null;
                  },
                ),
                CustomTextFormField(
                  labelText: "your email",
                  hintText: "john@email.com",
                ),
                PasswordFormField(
                  labelText: "choose your password",
                  hintText: "********",
                ),
                PasswordFormField(
                  labelText: "confirm your password",
                  hintText: "********",
                )
              ],
            )),
        Padding(
          padding: const EdgeInsets.only(
              left: 32.0, right: 32.0, top: 16.0, bottom: 4.0),
          child: PrimaryButton(
            text: 'Sign Up',
            onPressed: () {
              final valid = _formKey.currentState!.validate();
              log(valid.toString());
            },
          ),
        ),
        const SizedBox(height: 16.0),
        MultiTextButton(
          onPressed: () => log('tap'),
          children: [
            Text(
              'Already have an account? ',
              style: AppTextStyles.smallText.copyWith(color: AppColors.grey),
            ),
            Text(
              'Log In',
              style:
                  AppTextStyles.smallText.copyWith(color: AppColors.greenTwo),
            ),
          ],
        ),
      ],
    ));
  }
}
