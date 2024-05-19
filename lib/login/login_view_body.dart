import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swm1/login/share/cubit.dart';
import 'package:swm1/login/share/states.dart';
import 'package:swm1/register/register_view.dart';

import '../assets/const.dart';
import '../component/com.dart';

// ignore: must_be_immutable
class LoginViewBody extends StatelessWidget {
  LoginViewBody({super.key});
  bool pass = true;
  final emailcontroler = TextEditingController();
  final passcontroler = TextEditingController();
  final formkey = GlobalKey<FormState>();
  String? email;
  String? passwordd;
  static String id = 'login page';
  String? sign;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, Loginstate>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: primaryColor,
          body: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const Center(
                      child: Image(
                          width: 140,
                          height: 140,
                          image:
                              AssetImage('lib/assets/images/Basic logo.png')),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    const Text(
                      "Login to your Account",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Email Address",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        TextF(
                          hinttext: 'Enter your e-mail',
                          onChange: (data) {
                            email = data;
                          },
                          controller: emailcontroler,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please Enter Your E-mail';
                            } else if (emailcontroler.text.contains(".") ==
                                    false ||
                                emailcontroler.text.contains("@") == false) {
                              return 'Please Enter a validate email';
                            }
                            return null;
                          },
                          typ: TextInputType.emailAddress,
                          image: const Image(
                            width: 40,
                            height: 40,
                            image:
                                AssetImage('lib/assets/images/Email logo.png'),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            "Password",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400),
                          ),
                        ),
                        TextF(
                          hinttext: 'Enter your password',
                          onChange: (data) {
                            passwordd = data;
                          },
                          controller: passcontroler,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please Enter your password";
                            } else if (value.length < 6)
                              return "The password must be at least 6";
                            return null;
                          },
                          typ: TextInputType.visiblePassword,
                          image: const Image(
                            width: 40,
                            height: 40,
                            image: AssetImage('lib/assets/images/Subtract.png'),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Forgot password?",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            )),
                      ],
                    ),
                    Center(
                      child: OutlinedButton(
                        onPressed: () {
                          /* Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const LoginView();
                              }));*/
                          if (formkey.currentState!.validate()) {
                            debugPrint(emailcontroler.text);
                            debugPrint(passcontroler.text);
                          }
                        },
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.white,
                          fixedSize: const Size(210, 47),
                          side: const BorderSide(
                            color: Colors.transparent,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        child: const Text(
                          'Login',
                          style: TextStyle(color: Colors.black87, fontSize: 25),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Not a member yet?",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const RegisterView();
                            }));
                          },
                          child: const Text(
                            "Register",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
