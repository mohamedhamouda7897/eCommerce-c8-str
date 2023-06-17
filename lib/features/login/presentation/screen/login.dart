import 'package:ecommerce_c8_str/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/utils/compenents.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
              height: 86.h,
            ),
            Text(
              "Welcome back to Route",
              style: GoogleFonts.poppins(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            Text(
              "Please sign in with your mail",
              style: GoogleFonts.poppins(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w300,
                  color: Colors.white),
            ),
            SizedBox(
              height: 80.h,
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
              height: 8.h,
            ),
            InkWell(
                onTap: () {},
                child: Text(
                  "Forget Password ?",
                  textAlign: TextAlign.end,
                  style: GoogleFonts.poppins(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                )),
            SizedBox(
              height: 56.h,
            ),
            Container(
              height: 64.h,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Login",
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
                  "Don't Have an account?",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 18.sp,
                      color: Colors.white),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("Create Account",
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
