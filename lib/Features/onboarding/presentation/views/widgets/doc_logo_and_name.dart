import 'package:doc_doc_app/Core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/image/logo.svg'),
        Gap(10),
        Text('data', style: AppStyles.primaryHeadLineStyle),
        
      ],
    );
  }
}
