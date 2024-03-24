import 'package:flutter/material.dart';
import 'package:growhub/constants/sizes.dart';
import 'package:growhub/constants/text_strings.dart';
import 'package:growhub/pallete.dart';

class TTernsAndConditionCheckbox extends StatelessWidget {
  const TTernsAndConditionCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            width: 24,
            height: 24,
            child: Checkbox(value: true, onChanged: (value) {})),
        const SizedBox(height: TSizes.spaceBtwItems),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: '${TTexts.iAgreeTo}',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: TTexts.privacyPolicy,
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: Pallete.greenPrimary,
                    decoration: TextDecoration.underline,
                    decorationColor: Pallete.greenPrimary,
                  )),
          TextSpan(
              text: '${TTexts.and}',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: TTexts.termsOfUse,
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: Pallete.greenPrimary,
                    decoration: TextDecoration.underline,
                    decorationColor: Pallete.greenPrimary,
                  )),
        ]))
      ],
    );
  }
}
