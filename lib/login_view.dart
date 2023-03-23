// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:input_form/dashboard_view.dart';
import 'package:input_form/shared/util/validator_helper.dart';
import 'package:input_form/shared/widget/custom_buttom.dart';
import 'package:input_form/shared/widget/custom_elevated_button_icon.dart';
import 'package:input_form/shared/widget/custom_text_form_field.dart';
import 'package:input_form/sign_up_view.dart';

class LoginView2 extends StatefulWidget {
  const LoginView2({Key? key}) : super(key: key);

  @override
  State<LoginView2> createState() => _LoginView2State();
}

final _formKey = GlobalKey<FormState>();

class _LoginView2State extends State<LoginView2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      const Gap(10),
                      const Text(
                        'Login to ur Account',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Gap(30),
                      TextFieldCustomWidget(
                        label: 'Email',
                        hintText: 'Your Email',
                        validator: (value) => ValidatorHelper.required(value),
                        suffixIcon: Icons.email,
                      ),
                      const Gap(10),
                      TextFieldCustomWidget(
                        label: "Password",
                        hintText: 'Your Password',
                        validator: (value) => ValidatorHelper.required(value),
                        suffixIcon: Icons.password,
                      ),
                      const Gap(10),
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 40,
                              child: CustomIconButton(
                                icon: Icons.login,
                                text: 'Login',
                                onPressed: () {
                                  var isValid =
                                      _formKey.currentState!.validate();
                                  if (isValid) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const DashBoardView()),
                                    );
                                  }
                                },
                              ),
                            ),
                          ),
                          const Gap(12),
                          Expanded(
                            child: SizedBox(
                              height: 40,
                              child: CustomIconButton(
                                text: 'Reset',
                                icon: Icons.refresh,
                                onPressed: () {
                                  _formKey.currentState!.reset();
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Gap(10),
                      const Text('You dont have account?'),
                      const Gap(10),
                      CustomElevatedButton(
                        text: "Create New Account",
                        color: Colors.green,
                        width: double.infinity,
                        height: 40,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUp()),
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
