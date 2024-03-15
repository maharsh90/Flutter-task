import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:march15task/widget/build_icon_button.dart';
import 'package:march15task/widget/build_textform_field.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 2,
          child: Stack(
            children: [
              SizedBox(
                height: ScreenUtil().setHeight(392),
                width: ScreenUtil().setWidth(375),
                child: Image.asset("./images/Group 42914.png"),
              ),
              Positioned(
                top: 35,
                left: 16,
                child: buildIconButton(context),
              ),
              Positioned(
                top: 142,
                left: 14,
                child: Text(
                  "Hlis",
                  style: TextStyle(
                      fontFamily: "tt-milks",
                      color: Color(0xFFF79421),
                      fontSize: 50.sp),
                ),
              ),
              34.verticalSpace,
              Positioned(
                top: 242,
                left: 14,
                child: Text(
                  "Sign In",
                  style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 26.sp,
                      fontFamily: "sf_pro_display",
                      fontWeight: FontWeight.w700),
                ),
              ),
              Positioned(
                top: 284,
                left: 14,
                child: Text(
                  "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, ",
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontFamily: "sf_pro_display",
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
        45.verticalSpace,
        buildTextFormField("Phone Number"),
        // buildTextFormField("Password"),
        Container(
          margin: EdgeInsets.all(16),
          child: TextFormField(
            obscureText: isObscure ? false : true,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              labelText: "password",
              labelStyle: TextStyle(color: Colors.grey),
              suffixIcon: isObscure
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          isObscure = !isObscure;
                        });
                      },
                      icon: Icon(Icons.visibility))
                  : IconButton(
                      onPressed: () {
                        setState(() {
                          isObscure = !isObscure;
                        });
                      },
                      icon: Icon(Icons.visibility_off)),
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "Forgot Password?",
            style: TextStyle(color: Colors.black),
          ),
        ),
        23.verticalSpace,
        Container(
          margin: EdgeInsets.all(17),
          height: ScreenUtil().setHeight(54),
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.r),
              ),
              backgroundColor: Color(0xFFF79421),
            ),
            onPressed: () {},
            child: Text(
              'Sign In',
              style: TextStyle(
                fontFamily: "sf_pro_display",
                fontWeight: FontWeight.w600,
                fontSize: 20.sp,
                color: Color(0xFFFFFFFF),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
