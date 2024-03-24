import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:growhub/constants/sizes.dart';
import 'package:growhub/constants/text_strings.dart';
import 'package:growhub/custom_shapes/login_signup/form_divider.dart';
import 'package:growhub/custom_shapes/login_signup/social_buttons.dart';
import 'package:growhub/login/widgets/login_form.dart';
import 'package:growhub/login/widgets/login_header.dart';
import 'package:growhub/style/spacing_styles.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: TSpacingStyle.paddingWithAppBarHeight,
            child: Column(
              children: [
                /// Logo, Title & Sub-Title
               const TLoginHeader(),

                /// FORM
                const TLoginForm(),

                /// Divider
                TFormDivider(dividerText: TTexts.orSignInWith.capitalize!,),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                /// Footer
                const TSocialButtons(),
              ],
            )),
      ),
    );
  }
}




