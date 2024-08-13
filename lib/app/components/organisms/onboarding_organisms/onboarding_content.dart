import 'package:aksamedia_test/app/components/atoms/onboarding_atoms/onboarding_atoms.dart';
import 'package:aksamedia_test/app/components/molecules/onboarding_molecules/onboarding_molecules.dart';
import 'package:flutter/material.dart';

class OnboardingContent extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final String textButton;
  final Function() onPressed;

  const OnboardingContent({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.textButton,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        BackgroundImage(imagePath: imagePath),
        FooterCard(
          title: title,
          description: description,
          textButton: textButton,
          onPressed: onPressed,
        ),
      ],
    );
  }
}
