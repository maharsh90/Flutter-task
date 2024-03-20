import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_exam_app/home_page.dart';
import 'package:food_exam_app/ui_helper/app_color.dart';
import 'package:food_exam_app/widgets/build_elevated_icon_button.dart';
import 'package:food_exam_app/widgets/build_normal_button.dart';
import 'package:food_exam_app/widgets/build_text_form_field.dart';
import 'package:form_field_validator/form_field_validator.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          statusBarColor: AppColor().lightOrange,
          statusBarIconBrightness: Brightness.light),
    );
    return Scaffold(
      backgroundColor: AppColor().lightOrange,
      body: Stack(
        children: [
          const Positioned(
            top: 10,
            left: 154,
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage("./images/Group 1804.png"),
            ),
          ),
          Positioned(bottom: 0, child: buildBottomSheet()),
        ],
      ),
    );
  }
}

class buildBottomSheet extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  buildBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      height: 740,
      width: ScreenUtil().screenWidth,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        color: AppColor().white,
      ),
      child: Form(
        key: formKey,
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 60,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: const Divider(
                        thickness: 5, color: Color(0xFFD9D9D9), height: 6),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 36,
                  width: 36,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xFFD9D9D9),
                  ),
                  child: IconButton(
                    style: IconButton.styleFrom(
                        // fixedSize: Size.fromWidth(36),
                        backgroundColor: const Color(0xFFD9D9D9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        )),
                    onPressed: () {},
                    icon: Icon(
                      Icons.close,
                      size: 20,
                      color: AppColor().lightBlack,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 70,
                width: 358,
                child: Text(
                  "Get Started with Lobster",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: AppColor().lightBlack,
                  ),
                ),
              ),
              15.verticalSpace,
              InkWell(
                onTap: () {},
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: "Don’t have an account?",
                      style: TextStyle(color: AppColor().grey),
                    ),
                    TextSpan(
                        text: " Signup Now",
                        style: TextStyle(color: AppColor().lightBlack)),
                  ]),
                ),
              ),
              25.verticalSpace,
              buildTextFormField(
                  txt: "Email or Phone Number",
                  textInputType: TextInputType.emailAddress,
                  multiValidator: MultiValidator([
                    RequiredValidator(errorText: "please enter email"),
                    EmailValidator(errorText: "Please provide valid email id"),
                  ]),
                  textInputAction: TextInputAction.next),
              15.verticalSpace,
              buildTextFormField(
                  txt: "Enter Password",
                  textInputType: TextInputType.text,
                  multiValidator: MultiValidator([
                    RequiredValidator(errorText: "Please enter password"),
                    MinLengthValidator(5,
                        errorText:
                            "please enter minimum 5 digit password at least"),
                  ]),
                  textInputAction: TextInputAction.done),
              15.verticalSpace,
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(color: AppColor().lightBlack),
                  ),
                ),
              ),
              15.verticalSpace,
              SizedBox(
                height: 55,
                width: ScreenUtil().screenWidth,
                child: buildButton(
                  txt: "Log In",
                  voidcallback: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    }
                  },
                ),
              ),
              20.verticalSpace,
              const Align(
                  alignment: Alignment.center, child: Text("Or Continue")),
              20.verticalSpace,
              SizedBox(
                  height: 54,
                  width: ScreenUtil().screenWidth,
                  child: buildElevatedIconButton(
                      txt: "Continue with Facebook",
                      icon: Icons.facebook,
                      txtColor: AppColor().white,
                      voidcallback: () {})),
              20.verticalSpace,
              SizedBox(
                height: 54,
                width: ScreenUtil().screenWidth,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: AppColor().white,
                  ),
                  icon: Image.asset(
                    "./images/google1.png",
                    height: 40,
                    width: 40,
                  ),
                  onPressed: () {},
                  label: Text(
                    'Continue with Google',
                    style: TextStyle(
                        fontFamily: "montserrat_regular",
                        color: AppColor().grey,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                ),
              ),
              21.verticalSpace,
              SizedBox(
                  height: 54,
                  width: ScreenUtil().screenWidth,
                  child: buildElevatedIconButton(
                      txt: "Continue with Apple",
                      icon: Icons.apple,
                      backgroundColor: AppColor().lightBlack,
                      txtColor: AppColor().white,
                      voidcallback: () {})),
            ],
          ),
        ),
      ),
    );
  }
}
