import 'package:flutter/material.dart';

enum TypeStyle { display, headline, title, body, label }

enum TypeSize { small, medium, large }

class Texts extends StatelessWidget {
  const Texts(this.text, {required this.style, required this.size, super.key});

  final String text;
  final TypeStyle style;
  final TypeSize size;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final TextStyle? textStyle = switch ((style, size)) {
      (TypeStyle.display, TypeSize.small) => textTheme.displaySmall,
      (TypeStyle.display, TypeSize.medium) => textTheme.displayMedium,
      (TypeStyle.display, TypeSize.large) => textTheme.displayLarge,

      (TypeStyle.headline, TypeSize.small) => textTheme.headlineSmall,
      (TypeStyle.headline, TypeSize.medium) => textTheme.headlineMedium,
      (TypeStyle.headline, TypeSize.large) => textTheme.headlineLarge,

      (TypeStyle.title, TypeSize.small) => textTheme.titleSmall,
      (TypeStyle.title, TypeSize.medium) => textTheme.titleMedium,
      (TypeStyle.title, TypeSize.large) => textTheme.titleLarge,

      (TypeStyle.body, TypeSize.small) => textTheme.bodySmall,
      (TypeStyle.body, TypeSize.medium) => textTheme.bodyMedium,
      (TypeStyle.body, TypeSize.large) => textTheme.bodyLarge,

      (TypeStyle.label, TypeSize.small) => textTheme.labelSmall,
      (TypeStyle.label, TypeSize.medium) => textTheme.labelMedium,
      (TypeStyle.label, TypeSize.large) => textTheme.labelLarge,
    };

    return Text(text, style: textStyle);
  }
}
