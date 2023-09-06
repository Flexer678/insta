import 'package:flutter/material.dart';
import "package:flutter_svg/svg.dart";
import 'package:instagram/utils/colors.dart';
import 'package:instagram/widgets/text_field_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //private variables set inside the _loginscreenstate
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override

  //this function is a flutter function that disposes of variables(inputvalue) after we no longer need it.
  //if it does not dispose it can cause a memory leak.

  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            children: [
              Flexible(
                flex: 1,
                child: Container(),
              ),
              //svg picture
              SvgPicture.asset("assets/ic_instagram.svg",
                  colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  color: Colors.white,
                  height: 64),
              const SizedBox(
                height: 64,
              ),
              TextFieldInput(
                  textEditingController: _emailController,
                  hintText: "Enter your email",
                  textInputType: TextInputType.emailAddress),
              const SizedBox(
                height: 24,
              ),
              TextFieldInput(
                  textEditingController: _passwordController,
                  hintText: "Enter your password",
                  textInputType: TextInputType.emailAddress),
              const SizedBox(
                height: 24,
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: const BoxDecoration(
                    color: blueColor,
                    borderRadius: BorderRadius.all(Radius.circular(4))),
                child: const Text("Log in"),
              ),
              const SizedBox(
                height: 12,
              ),
              Flexible(
                flex: 2,
                child: Container(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: const Text("Don't have an account"),
                  ),
                  GestureDetector(
                    child: Container(
                        child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: const Text(
                              ' Signup.',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ))),
                  ),
                  const SizedBox(
                    height: 34,
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
