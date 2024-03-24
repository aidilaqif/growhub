import 'package:flutter/material.dart';
import 'package:growhub/constants/sizes.dart';
import 'package:growhub/constants/text_strings.dart';
import 'package:growhub/nav_bar.dart';
import 'package:growhub/pallete.dart';
import 'package:growhub/signup/signup.dart';
import 'package:iconsax/iconsax.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
      child: Column(
        children: [
          ///Email
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: TTexts.email),
          ), // TextFormField
          const SizedBox(height: TSizes.spaceBtwInputFields),
          // Password
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: TTexts.password,
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),

          const SizedBox(height: TSizes.spaceBtwInputFields / 2),

          // Remember Me & Forget Password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// Remember me
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text(TTexts.rememberMe),
                ],
              ),

              /// Forget Password
              TextButton(
                  onPressed: () {}, child: const Text(TTexts.forgetPassword))
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          /// Sign in Button
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NavBar(),
                  ),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Pallete.greenSecondary, // Background color
                ),
              ),
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.black, // Text color
                ),
              ),
            ),
          ),

          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),

          /// Create Account Button
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignupScreen(),
                  ),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Pallete.greenBasic, // Background color
                ),
              ),
              child: Text(
                'Register',
                style: TextStyle(
                  color: Colors.black, // Text color
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
