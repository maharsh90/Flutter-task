import 'package:flutter/material.dart';
import 'package:march12task/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  bool isTrue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                const Text("Please enter the details below to continue"),
                TextFormField(
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
                  decoration: InputDecoration(
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
                TextButton(
                  onPressed: () {},
                  child: const Text('Forgot Password'),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            const BoxShadow(
                                offset: Offset(0.5, 0.5),
                                color: Colors.grey,
                                spreadRadius: 1,
                                blurRadius: 5),
                          ]),
                      child: IconButton(
                        style: IconButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {},
                        icon: Image.asset(
                          "./logo/facebook.png",
                          height: 20,
                          width: 20,
                        ),
                      ),
                    ),
                    Container(
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            const BoxShadow(
                                offset: Offset(0.5, 0.5),
                                color: Colors.grey,
                                spreadRadius: 1,
                                blurRadius: 5),
                          ]),
                      child: IconButton(
                        style: IconButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {},
                        icon: Image.asset(
                          "./logo/google.png",
                          height: 20,
                          width: 20,
                        ),
                      ),
                    ),
                    Container(
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            const BoxShadow(
                                offset: Offset(0.5, 0.5),
                                color: Colors.grey,
                                spreadRadius: 1,
                                blurRadius: 5),
                          ]),
                      child: IconButton(
                        style: IconButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {},
                        icon: const Icon(Icons.apple),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text("Don't have an account?"),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Register'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
