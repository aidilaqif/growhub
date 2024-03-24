import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:growhub/custom_shapes/login_signup/form_divider.dart';
import 'package:growhub/custom_shapes/login_signup/social_buttons.dart';
import 'package:growhub/constants/sizes.dart';
import 'package:growhub/constants/text_strings.dart';
import 'package:growhub/signup/widgets/signup_form.dart';


class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(TTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Form
              const TSignupForm(),

              const SizedBox(height: TSizes.spaceBtwSections),
              //Divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),

              //social button
              const TSocialButtons(),
            ],
          ),
        )));
  }
}

