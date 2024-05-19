import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swm1/login/login_view.dart';
import 'package:swm1/login/share/cubit.dart';

import '../assets/const.dart';
import '../component/com.dart';
import '../login/share/states.dart';

// ignore: must_be_immutable
class RegisterViewBody extends StatefulWidget {
  RegisterViewBody({super.key});

  @override
  State<RegisterViewBody> createState() => _RegisterViewBodyState();
}

class _RegisterViewBodyState extends State<RegisterViewBody> {
  String? email;

  String? passwordd;

  String? username;

  String? iD;

  String? address;

  String? organization;

  String? phoneNumber;

  bool isPass = true;

  final emailcontroler = TextEditingController();

  final usercontroler = TextEditingController();

  final passcontroler = TextEditingController();

  final passconfcontroler = TextEditingController();

  final phonecontroler = TextEditingController();

  final idcontroler = TextEditingController();

  final organizationcontroler = TextEditingController();

  String? _selectedValue;
  final formkey = GlobalKey<FormState>();

  List<String> listOfValue = [
    'Administrator',
    'Hospital Supervisor',
    'Hospital manager',
    'Incinerator Supervisor'
  ];

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
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 30),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const Center(
                      child: Image(
                          width: 120,
                          height: 120,
                          image:
                              AssetImage('lib/assets/images/Basic logo.png')),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 4.0, top: 8),
                          child: Text(
                            "Username",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          ),
                        ),
                        TextF(
                          hinttext: 'Enter your username',
                          onChange: (data) {
                            username = data;
                          },
                          controller: usercontroler,
                          validator: (value) {
                            if (value!.isEmpty) return 'Enter User Name';
                            return null;
                          },
                          typ: TextInputType.text,
                          image: const Image(
                            image: AssetImage(
                                'lib/assets/images/User_alt_fill.png'),
                          ),
                        ),
                      ],
                    ),
                    //
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 4.0, top: 8),
                          child: Text(
                            "Email Address",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          ),
                        ),
                        TextF(
                          hinttext: '******@gmail.com',
                          onChange: (data) {
                            email = data;
                          },
                          controller: emailcontroler,
                          validator: (value) {
                            if (value!.isEmpty) return 'Enter Your E-mail';
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
                    //
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 4.0, top: 8),
                          child: Text(
                            "Password",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          ),
                        ),
                        TextF(
                          hinttext: '*******',
                          onChange: (data) {
                            passwordd = data;
                          },
                          controller: passcontroler,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please Enter your password";
                            } else if (value.length < 6) {
                              return "The password must be at least 6";
                            }
                            return null;
                          },
                          typ: TextInputType.visiblePassword,
                          image: const Image(
                            width: 40,
                            height: 40,
                            image: AssetImage('lib/assets/images/Subtract.png'),
                          ),
                        ),
                      ],
                    ),
                    //
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 4.0, top: 8),
                          child: Text(
                            "Confirm password",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          ),
                        ),
                        TextF(
                          hinttext: '*******',
                          onChange: (data) {
                            passwordd = data;
                          },
                          controller: passconfcontroler,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please Enter your password";
                            } else if (value.length < 6) {
                              return "The password must be at least 6";
                            }
                            return null;
                          },
                          typ: TextInputType.visiblePassword,
                          image: const Image(
                            width: 40,
                            height: 40,
                            image: AssetImage('lib/assets/images/confpas.png'),
                          ),
                        ),
                      ],
                    ),
                    //
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 4.0, top: 8),
                          child: Text(
                            "National ID",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          ),
                        ),
                        TextF(
                          hinttext: '32169823471',
                          onChange: (data) {
                            iD = data;
                          },
                          controller: idcontroler,
                          validator: (value) {
                            if (value!.isEmpty) return 'Enter Your ID';
                            return null;
                          },
                          typ: TextInputType.number,
                          image: const Image(
                            width: 40,
                            height: 40,
                            image:
                                AssetImage('lib/assets/images/nationalid.png'),
                          ),
                        ),
                      ],
                    ), //
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 4.0, top: 8),
                          child: Text(
                            "Phone Number",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          ),
                        ),
                        TextF(
                          hinttext: 'Enter your Phone number',
                          onChange: (data) {
                            phoneNumber = data;
                          },
                          controller: phonecontroler,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter Your Phone Number';
                            }
                            return null;
                          },
                          typ: TextInputType.number,
                          image: const Image(
                            width: 40,
                            height: 40,
                            image:
                                AssetImage('lib/assets/images/Vector 189.png'),
                          ),
                        ),
                      ],
                    ), //
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 4.0, top: 8),
                          child: Text(
                            "Address",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          ),
                        ),
                        TextF(
                          hinttext: 'Luxor',
                          onChange: (data) {
                            address = data;
                          },
                          typ: TextInputType.emailAddress,
                          image: const Image(
                            width: 40,
                            height: 40,
                            image: AssetImage(
                                'lib/assets/images/Subtract (1).png'),
                          ),
                        ),
                      ],
                    ),
                    //
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 4.0, top: 8),
                          child: Text(
                            "Organization",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          ),
                        ),
                        TextF(
                          hinttext: 'Luxor hospital',
                          onChange: (data) {
                            organization = data;
                          },
                          controller: organizationcontroler,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter Your Organization';
                            }
                            return null;
                          },
                          typ: TextInputType.emailAddress,
                          image: const Image(
                            width: 40,
                            height: 40,
                            image: AssetImage(
                                'lib/assets/images/Subtract (2).png'),
                          ),
                        ),
                      ],
                    ),
                    //
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 4.0, top: 8),
                          child: Text(
                            "Register as",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          ),
                        ),
                        DropdownButtonFormField(
                          value: _selectedValue,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            prefixIcon: const Image(
                              width: 40,
                              height: 40,
                              image:
                                  AssetImage('lib/assets/images/Contract.png'),
                            ),
                            disabledBorder: InputBorder.none,
                            contentPadding: const EdgeInsets.all(1),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                            ),
                          ),
                          hint: const Text(
                            'choose one',
                          ),
                          isExpanded: true,
                          onChanged: (value) {
                            setState(() {
                              _selectedValue = value;
                            });
                          },
                          onSaved: (value) {
                            setState(() {
                              _selectedValue = value;
                            });
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "can't empty";
                            } else {
                              return null;
                            }
                          },
                          items: listOfValue.map((String val) {
                            return DropdownMenuItem(
                              value: val,
                              child: Text(
                                val,
                              ),
                            );
                          }).toList(),
                        ),
                      ],
                    ),

                    //
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Center(
                        child: OutlinedButton(
                          onPressed: () {
                            /* if (formkey.currentState!.validate()) {
                              debugPrint(emailcontroler.text);
                              debugPrint(passcontroler.text);
                               debugPrint(organizationcontroler.text);
                              debugPrint(idcontroler.text);
                                debugPrint(phonecontroler.text);
                              debugPrint(usercontroler.text);
                              debugPrint(passconfcontroler.text);
                                //  debugPrint(admincontroler.text);
                            }else */
                            if (formkey.currentState!.validate()) {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const LoginView();
                              }));
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
                            'Continue',
                            style:
                                TextStyle(color: Colors.black87, fontSize: 25),
                          ),
                        ),
                      ),
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
