import 'package:flutter/material.dart';
import 'package:newdsl/data/controller/auth_controller.dart';
import 'package:newdsl/view/util/styles/colors.dart';
import 'package:newdsl/view/util/styles/textstyles.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

TextEditingController username = TextEditingController();
TextEditingController password = TextEditingController();
final _formkey = GlobalKey<FormState>();

bool _obscureText = true;

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          body: Stack(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
                bottomLeft: Radius.circular(50)),
            child: Container(
              height: height * 0.8,
              width: double.infinity,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colrs.appBarColors, Colrs.greenCustomize],
                      begin: Alignment.bottomCenter)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 90),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer<AuthController>(builder: (context, value, child) {
                  return Form(
                    key: _formkey,
                    child: Column(
                      children: [
                        Text(
                          'DSL\nsaleSystem',
                          style: txtTitleLogin,
                        ),
                        SizedBox(
                          height: height * 0.1,
                        ),
                        Container(
                          width: width / 1.4,
                          decoration: const BoxDecoration(
                              color: Colrs.colorWhite,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "username is require";
                              }
                              return null;
                            },
                            controller: username,
                            decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.only(left: 10, bottom: 10),
                                // contentPadding: EdgeInsets.symmetric(vertical: 1),
                                border: InputBorder.none,
                                label: Text(
                                  'username:',
                                  style: txtSmall,
                                )),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: width / 1.4,
                          decoration: const BoxDecoration(
                              color: Colrs.colorWhite,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                "password is required";
                              }
                              return null;
                            },
                            controller: password,
                            obscureText: _obscureText,
                            decoration: InputDecoration(
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _obscureText = !_obscureText;
                                      });
                                    },
                                    icon: _obscureText == true
                                        ? const Icon(
                                            Icons.remove_red_eye_outlined)
                                        : const Icon(Icons.remove_red_eye)),
                                contentPadding:
                                    const EdgeInsets.only(left: 10, bottom: 10),
                                border: InputBorder.none,
                                label: Text(
                                  'password:',
                                  style: txtSmall,
                                )),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 50,
                          width: width / 1.4,
                          decoration: const BoxDecoration(
                              color: Colrs.darkGreenCustomize,
                              // border: Border.all(),s
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: InkWell(
                            onTap: () async {
                              if (_formkey.currentState!.validate()) {
                                value.login(
                                    username: username.text,
                                    password: password.text);
                              }
                              // navService.pushNamed(Routehelper.dashboard);
                              // print(username);
                            },
                            child: Center(
                                child: Text(
                              'Login',
                              style: txtRegularWhite,
                            )),
                          ),
                        )
                      ],
                    ),
                  );
                }),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
