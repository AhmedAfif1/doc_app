import 'package:doc_doc_app/Core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/image/Group.svg'),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14, 0.4],
              colors: [Colors.white, Colors.white.withOpacity(0.0)],
            ),
          ),
          child: Image.asset('assets/image/doctor.png'),
        ),
        Positioned(
          bottom: 30,
          child: Text(
            'Best Doctor Appointment App',
            textAlign: TextAlign.center,
            style: AppStyles.white16SemiBold.copyWith(height: 1.4),
          ),
        ),
      ],
    );
  }
}
