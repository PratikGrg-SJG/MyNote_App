import 'package:flutter/material.dart';
import './home_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _passwordVisible = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: Scaffold(
        // backgroundColor: const Color(0xffF0E7F5),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 50, right: 50, bottom: 100, top: 150),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          "asset/images/loginlogo.png",
                          width: 150,
                          height: 150,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(bottom: 30),
                      child: const Text(
                        "Login to your account",
                        style: TextStyle(
                          fontFamily: 'AvertaCY',
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff9a5dba),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // const Padding(
                    //   padding: EdgeInsets.all(8),
                    //   child: Text(
                    //     "Email",
                    //     style: TextStyle(
                    //       fontFamily: 'AvertaCY',
                    //       fontWeight: FontWeight.w600,
                    //       fontSize: 15,
                    //       color: Color(0xff9a5dba),
                    //     ),
                    //   ),
                    // ),
                    TextFormField(
                      controller: _emailController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter your email";
                        }
                        if (!value.contains("@gmail.com")) {
                          return "Please enter valid email";
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.email_rounded,
                          color: Color(0xff9a5dba),
                        ),
                        hintText: "email",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          borderSide: BorderSide(
                            color: Color(0xffB183BD),
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // const Padding(
                    //   padding: EdgeInsets.all(8.0),
                    //   child: Text(
                    //     "Password",
                    //     style: TextStyle(
                    //       fontFamily: 'AvertaCY',
                    //       fontSize: 15,
                    //       fontWeight: FontWeight.w600,
                    //       color: Color(0xff9a5dba),
                    //     ),
                    //   ),
                    // ),
                    TextFormField(
                      obscureText: _passwordVisible,
                      controller: _passwordController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter your password";
                        }
                        if (value.length < 8) {
                          return "Password length must be more than 8";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.lock_rounded,
                          color: Color(0xff9a5dba),
                        ),
                        suffixIcon: IconButton(
                          icon: _passwordVisible
                              ? const Icon(
                                  Icons.visibility_off_rounded,
                                  color: Color(0xff9a5dba),
                                )
                              : const Icon(
                                  Icons.visibility_rounded,
                                  color: Color(0xff9a5dba),
                                ),
                          onPressed: () {
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                        ),
                        hintText: "password",
                        hintStyle: const TextStyle(
                          color: Colors.grey,
                        ),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          borderSide: BorderSide(
                            color: Color(0xffB183BD),
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: const MaterialStatePropertyAll(
                            Color(0xffF68D92),
                          ),
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // print(_emailController.value.text.toLowerCase());
                            // print(_passwordController.text);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ),
                            );
                          }
                        },
                        child: const Padding(
                          padding: EdgeInsets.only(
                              left: 110, right: 110, top: 15, bottom: 15),
                          child: Text(
                            "LOGIN",
                            style: TextStyle(
                                fontFamily: 'AvertaCY',
                                fontSize: 17,
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
