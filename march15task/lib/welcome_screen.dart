import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:march15task/create_account_screen.dart';
import 'package:march15task/sign_in_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            56.verticalSpace,
            Text(
              "Hlis",
              style: TextStyle(
                  fontFamily: "tt-milks",
                  color: Color(0xFFF79421),
                  fontSize: 50.sp),
            ),
            50.verticalSpace,
            Text(
              "Welcome!",
              style:
                  TextStyle(fontSize: 22.sp, fontFamily: "sf_pro_display_bold"),
            ),
            12.verticalSpace,
            Text(
              "Then you should sign in. We promise you won't regret this!",
              style: TextStyle(
                fontFamily: "sf_pro_display_light",
                fontSize: 16.sp,
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    top: 47,
                    left: 30,
                    child: Image.asset(
                      "./images/Mask Group(1).png",
                      height: ScreenUtil().setHeight(90),
                      width: ScreenUtil().setWidth(90),
                    ),
                  ),
                  Positioned(
                    top: 95,
                    left: 121,
                    child: Image.asset(
                      "./images/Mask Group.png",
                      height: ScreenUtil().setHeight(131),
                      width: ScreenUtil().setWidth(131),
                    ),
                  ),
                  Positioned(
                    top: 26,
                    left: 252,
                    child: Image.asset(
                      "./images/Mask Group(2).png",
                      height: ScreenUtil().setHeight(90),
                      width: ScreenUtil().setWidth(90),
                    ),
                  ),
                  Positioned(
                    top: 173,
                    left: 278,
                    child: Image.asset(
                      "./images/Mask Group(3).png",
                      height: ScreenUtil().setHeight(70),
                      width: ScreenUtil().setWidth(70),
                    ),
                  ),
                  Positioned(
                    top: 221,
                    left: 55,
                    child: Image.asset(
                      "./images/Mask Group(4).png",
                      height: ScreenUtil().setHeight(70),
                      width: ScreenUtil().setWidth(70),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(54),
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  backgroundColor: Color(0xFFF79421),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CreateAccountScreen(),
                      ));
                },
                child: Text(
                  'Create Account',
                  style: TextStyle(
                      fontFamily: "sf_pro_display",
                      fontWeight: FontWeight.w600,
                      fontSize: 20.sp,
                      color: Color(0xFFFFFFFF)),
                ),
              ),
            ),
            27.verticalSpace,
            SizedBox(
              height: ScreenUtil().setHeight(54),
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  backgroundColor: Color(0xFFCDCDCD),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignInScreen(),
                      ));
                },
                child: Text(
                  'Sign In',
                  style: TextStyle(
                      fontFamily: "sf_pro_display",
                      fontWeight: FontWeight.w600,
                      fontSize: 20.sp,
                      color: Color(0xFFFFFFFF)),
                ),
              ),
            ),
            53.verticalSpace,
          ],
        ),
      ),
    );
  }
}
