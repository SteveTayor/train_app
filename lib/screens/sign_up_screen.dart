import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:train_app/screens/sign_in_screen.dart';

import '../railBuddyButton.dart';
import '../railBuddyTextFormField.dart';
import 'admin/admin_profile.dart';

class RegisterScreen extends StatefulWidget {
  static const String id = 'register-screen';

  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController fullnameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: SingleChildScrollView(
          child: Column(
            // clipBehavior: Clip.none,
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 280,
                    child: Image.asset(
                      'assets/images/train_image.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 232.0),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.r),
                          topRight: Radius.circular(30.r),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 550.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.r),
                          topRight: Radius.circular(30.r))),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 15.0.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(
                                    color: Colors.blue.shade800,
                                    fontSize: 33.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 50.h,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('FullName',
                                    style:
                                        // GoogleFonts.nunito(

                                        TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600,
                                    )
                                    // ),
                                    ),
                              ),
                              SizedBox(
                                height: 50.h,
                                width: 300.w,
                                child: RailBuddyTextFormField(
                                  controller: usernameController,
                                  hintText: 'FullName',
                                  borderSide: BorderSide.none,
                                  keyboardType: TextInputType.emailAddress,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Email',
                                    style:
                                        // GoogleFonts.nunito(
                                        TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600,
                                    )
                                    // ),
                                    ),
                              ),
                              SizedBox(
                                  height: 50.h,
                                  width: 300.w,
                                  child: RailBuddyTextFormField(
                                    obscure: true,
                                    controller: passwordController,
                                    hintText: 'Email address ...',
                                    borderSide: BorderSide.none,
                                    keyboardType: TextInputType.emailAddress,
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Password',
                                    style:
                                        // GoogleFonts.nunito(
                                        TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600,
                                    )
                                    // ),
                                    ),
                              ),
                              SizedBox(
                                  height: 50.h,
                                  width: 300.w,
                                  child: RailBuddyTextFormField(
                                    obscure: true,
                                    controller: passwordController,
                                    hintText: 'Password',
                                    borderSide: BorderSide.none,
                                    keyboardType: TextInputType.emailAddress,
                                  )),
                            ],
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 45.0, right: 30),
                            child: Container(
                              height: 47,
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 6.0),
                                        child: Container(
                                          width: 20,
                                          height: 20,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            border: Border.all(
                                                width: 1.5,
                                                color: Colors.black),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'I agree to the ',
                                        style: TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                      Text('Terms and Conditions ',
                                          style: TextStyle(
                                            color: Colors.blue.shade700,
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w600,
                                          )),
                                      Text(
                                        'and ',
                                        style: TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                      Text('Privacy ',
                                          style: TextStyle(
                                            color: Colors.blue.shade700,
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w600,
                                          )),
                                    ],
                                  ),
                                  Text(
                                    '        Policy ',
                                    style: TextStyle(
                                      color: Colors.blue.shade700,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 11.h),
                          SizedBox(
                            height: 50.h,
                            width: 300.w,
                            child: RailBuddyButton(
                              text: 'Create Account',
                              onPressed: () {
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: ((context) => AdminProfilePage()),
                                  ),
                                );
                              },
                            ),
                          ),
                          SizedBox(height: 11.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('Already have a account?',
                                  style:
                                      // GoogleFonts.nunito(
                                      TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                  )
                                  // ),
                                  ),
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                      builder: ((context) => LoginScreen()),
                                    ),
                                  );
                                },
                                child: Text('Sign In',
                                    style:
                                        // GoogleFonts.nunito(
                                        TextStyle(
                                      color: Colors.blue.shade700,
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w600,
                                    )
                                    // ),
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
