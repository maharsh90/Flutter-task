import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:march15task/widget/build_icon_button.dart';
import 'package:march15task/widget/build_textform_field.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  bool isChecked = true;
  bool isObscure = true;
  bool isConfirmObscure = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            34.verticalSpace,
            buildIconButton(context),
            25.verticalSpace,
            Text(
              "Create Account",
              style: TextStyle(
                  fontFamily: "sf_pro_display",
                  fontWeight: FontWeight.w700,
                  fontSize: 26),
            ),
            14.verticalSpace,
            Text(
              "Sign up to continue to our app",
              style: TextStyle(fontSize: 16.sp),
            ),
            31.verticalSpace,
            buildTextFormField("Name"),
            buildTextFormField("Phone Number"),
            buildTextFormField("Email Address"),
            // buildTextFormField("Password"),
            // buildTextFormField("Confirm Password"),
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
            Container(
              margin: EdgeInsets.all(16),
              child: TextFormField(
                obscureText: isConfirmObscure ? false : true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: "Confirm Password",
                  labelStyle: TextStyle(color: Colors.grey),
                  suffixIcon: isConfirmObscure
                      ? IconButton(
                          onPressed: () {
                            setState(() {
                              isConfirmObscure = !isConfirmObscure;
                            });
                          },
                          icon: Icon(Icons.visibility))
                      : IconButton(
                          onPressed: () {
                            setState(() {
                              isConfirmObscure = !isConfirmObscure;
                            });
                          },
                          icon: Icon(Icons.visibility_off)),
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                  activeColor: Color(0xFFF79421),
                  value: isChecked,
                  onChanged: (value) {
                    setState(() {
                      isChecked = !isChecked;
                    });
                  },
                ),
                Text(
                  "I Agree with Terms & Conditions and  Privacy Policy",
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontFamily: "sf_pro_display",
                      color: Color(0xFF3C3C3C)),
                ),
              ],
            ),
            53.verticalSpace,
            SizedBox(
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
                  'Sign Up',
                  style: TextStyle(
                      fontFamily: "sf_pro_display",
                      fontWeight: FontWeight.w600,
                      fontSize: 20.sp,
                      color: Color(0xFFFFFFFF)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
