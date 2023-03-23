// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:input_form/login_view.dart';
import 'package:input_form/shared/util/validator_helper.dart';
import 'package:input_form/shared/widget/custom_elevated_button_icon.dart';
import 'package:input_form/shared/widget/custom__text_button.dart';
import 'package:input_form/shared/widget/custom_text_form_field.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

final _formKey = GlobalKey<FormState>();

class _SignUpState extends State<SignUp> {
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
                        'Create ur Account',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Gap(30),
                      Row(
                        children: [
                          Expanded(
                            child: TextFieldCustomWidget(
                              label: 'FirstName',
                              hintText: 'Enter Your First Name',
                              validator: (value) =>
                                  ValidatorHelper.required(value),
                              suffixIcon: Icons.person,
                            ),
                          ),
                          const Gap(10),
                          Expanded(
                            child: TextFieldCustomWidget(
                              label: 'LastName',
                              validator: (value) =>
                                  ValidatorHelper.required(value),
                              hintText: 'Enter Your Last Name',
                              suffixIcon: Icons.person,
                            ),
                          ),
                        ],
                      ),
                      const Gap(10),
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
                                icon: Icons.create,
                                text: 'Create Account',
                                onPressed: () {
                                  var isValid =
                                      _formKey.currentState!.validate();
                                  if (isValid) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const LoginView2()),
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
                      CustomTextButton(
                        text: 'Already Have Account?',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginView2()),
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
