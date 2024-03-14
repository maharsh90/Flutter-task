import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:march12task/home_screen.dart';
import 'package:march12task/vestimate_home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: buildView());
  }
}

class buildView extends StatefulWidget {
  const buildView({super.key});

  @override
  State<buildView> createState() => _buildViewState();
}

class _buildViewState extends State<buildView> {
  late TextEditingController emailController;
  @override
  void initState() {
    emailController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  final formKey = GlobalKey<FormState>();

  bool isKeyType = false;
  bool isTrue = true;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.white));
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              const SizedBox(
                height: 200,
                width: double.infinity,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: NetworkImage(
                          "https://static.vecteezy.com/system/resources/thumbnails/000/273/234/small_2x/15_Online_Food_Order.jpg"),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Login",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Please enter the details below to continue",
                  style: TextStyle(overflow: TextOverflow.ellipsis)),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "please enter email";
                  } else if (!RegExp(
                          r'\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}\b',
                          caseSensitive: false)
                      .hasMatch(value)) {
                    return "please enter valid email id";
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    isKeyType = true;
                  });
                },
                decoration: InputDecoration(
                  suffixIcon: emailController.text.isEmpty
                      ? const SizedBox.shrink()
                      : IconButton(
                          onPressed: () {
                            setState(() {
                              emailController.clear();
                              isKeyType = false;
                            });
                          },
                          icon: const Icon(Icons.close)),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  hintText: 'Enter your email',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                obscureText: !isTrue,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter password";
                  } else if (value.length < 5) {
                    return "Please enter maximum five alphanumeric characters";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  suffixIcon: isTrue
                      ? IconButton(
                          icon: const Icon(Icons.visibility),
                          onPressed: () {
                            setState(() {
                              isTrue = !isTrue;
                            });
                          },
                        )
                      : IconButton(
                          icon: const Icon(Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              isTrue = !isTrue;
                            });
                          },
                        ),
                  hintText: 'Enter your password',
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot Password',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 40,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Colors.pink.shade500),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ));
                    }
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                children: [
                  Expanded(child: Divider()),
                  Text("Or Login With"),
                  Expanded(child: Divider()),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        margin: const EdgeInsets.all(10),
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black12),
                        ),
                        child: const Image(
                          image: AssetImage("./logo/facebook.png"),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.all(9),
                        margin: const EdgeInsets.all(10),
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black12),
                        ),
                        child: const Image(
                          image: AssetImage("./logo/google.png"),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const VestimateHomeScreen(),
                            ));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.all(10),
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(Icons.apple),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Register',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
