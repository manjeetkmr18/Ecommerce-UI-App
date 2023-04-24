import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widgets/input_widget.dart';

class RegisterForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Email",
            style: GoogleFonts.inter(
              fontSize: 14.0,
              color: const Color.fromRGBO(138, 150, 191, 1),
              fontWeight: FontWeight.w500,
            ),
          ),
         const SizedBox(
            height: 5.0,
          ),
          const InputWidget(hintText: 'Email', suffixIcon: Icons.email),
         const SizedBox(height: 10.0),
          Text(
            "Password",
            style: GoogleFonts.inter(
              fontSize: 14.0,
              color: const Color.fromRGBO(138, 150, 191, 1),
              fontWeight: FontWeight.w500,
            ),
          ),
         const SizedBox(
            height: 5.0,
          ),
         const InputWidget(obscureText: true, hintText: 'Password', suffixIcon: Icons.password,),
         const SizedBox(
            height: 10.0,
          ),
          Text(
            "Confirm Password",
            style: GoogleFonts.inter(
              fontSize: 14.0,
              color:const Color.fromRGBO(138, 150, 191, 1),
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          const InputWidget(obscureText: true, hintText: 'Confirm Password', suffixIcon: Icons.password,),
        ],
      ),
    ));
  }
}
