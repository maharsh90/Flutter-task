import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_exam_app/home_page.dart';
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
      SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return Scaffold(
      backgroundColor: Colors.pinkAccent.shade100,
      body: Stack(
        children: [
          Positioned(
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
      padding: EdgeInsets.all(16),
      height: 720,
      width: 390,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        color: Colors.white,
      ),
      child: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 60,
                  child: Divider(color: Color(0xFFD9D9D9), height: 6),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 36,
                  width: 36,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFFD9D9D9),
                  ),
                  child: IconButton(
                    style: IconButton.styleFrom(
                        // fixedSize: Size.fromWidth(36),
                        backgroundColor: Color(0xFFD9D9D9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        )),
                    onPressed: () {},
                    icon: Icon(
                      Icons.close,
                      size: 20,
                      color: Color(0xFF323643),
                    ),
                  ),
                ),
              ),
              40.verticalSpace,
              SizedBox(
                height: 72,
                width: 358,
                child: Text(
                  "Get Started with Lobster",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF323643),
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
                      style: TextStyle(color: Colors.grey),
                    ),
                    TextSpan(
                        text: " Signup Now",
                        style: TextStyle(color: Color(0xFF323643))),
                  ]),
                ),
              ),
              25.verticalSpace,
              TextFormField(
                validator: MultiValidator([
                  RequiredValidator(errorText: "please enter email"),
                  EmailValidator(errorText: "Please provide valid email id"),
                ]),
                decoration: InputDecoration(
                  hintText: "Email or Phone Number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Color(0xFF32364333),
                    ),
                  ),
                ),
              ),
              15.verticalSpace,
              TextFormField(
                validator: MultiValidator([
                  RequiredValidator(errorText: "Please enter password"),
                  MinLengthValidator(5,
                      errorText:
                          "please enter minimum 5 digit password at least"),
                ]),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Color(0xFF32364333),
                    ),
                  ),
                  hintText: "Enter Password",
                ),
              ),
              15.verticalSpace,
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(color: Color(0xFF323643)),
                  ),
                ),
              ),
              15.verticalSpace,
              SizedBox(
                height: 55,
                width: 358,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Color(0xFFFE724C),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ));
                    if (formKey.currentState!.validate()) {}
                  },
                  child: Text(
                    'Log In',
                    style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                ),
              ),
              20.verticalSpace,
              Align(alignment: Alignment.center, child: Text("Or Continue")),
              20.verticalSpace,
              SizedBox(
                height: 54,
                width: 356,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Color(0xFF1877F2),
                  ),
                  icon: Icon(
                    Icons.facebook,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                  label: Text(
                    'Continue with Facebook',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              20.verticalSpace,
              SizedBox(
                height: 54,
                width: 356,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Color(0xFFFFFFFF),
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
                        color: Color(0xFF000000),
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                ),
              ),
              21.verticalSpace,
              SizedBox(
                height: 54,
                width: 356,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Color(0xFF323643),
                  ),
                  icon: Icon(Icons.apple),
                  onPressed: () {},
                  label: Text(
                    'Continue with Apple',
                    style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
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
