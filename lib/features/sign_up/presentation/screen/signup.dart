import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/compenents.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            SizedBox(
              height: 91.h,
            ),
            Image.asset(
              "assets/images/logo.png",
              height: 71.h,
              width: 237.w,
            ),
            SizedBox(
              height: 47.h,
            ),
            defaultFormField(
                label: "Full name",
                validate: (value) {
                  return null;
                }),
            SizedBox(
              height: 32.h,
            ),
            defaultFormField(
                label: "Phone Number",
                validate: (value) {
                  return null;
                }),
            SizedBox(
              height: 32.h,
            ),
            defaultFormField(
                label: "Email",
                validate: (value) {
                  bool emailValid = RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(value!);
                  if (value == null || value.isEmpty || !emailValid) {
                    return "Please Enter valid Email Address";
                  }
                  return null;
                }),
            SizedBox(
              height: 32.h,
            ),
            defaultFormField(
                label: "Password",
                validate: (value) {
                  return null;
                },
                isPassword: true),
            SizedBox(
              height: 56.h,
            ),
            Container(
              height: 64.h,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Create Account",
                  style: GoogleFonts.poppins(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primary),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "I Have an account?",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 18.sp,
                      color: Colors.white),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("Login",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 18.sp,
                          color: Colors.white)),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
