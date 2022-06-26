// ignore_for_file: sort_child_properties_last, avoid_unnecessary_containers, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_flutter/widgets/text_field_input.dart';

import '../uitils/colors.dart';


class LoginScreen extends StatefulWidget {
  
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Flexible(child: Container(), flex: 2,),

              SvgPicture.asset(
                'assets/ic_instagram.svg',
                color: primaryColor,
                height: 64,
              ),

              const SizedBox(height: 64),

              TextFieldInput(
                textEditingController: _emailController, 
                hintText: 'Enter your email', 
                textInputType: TextInputType.emailAddress
              ),

              const SizedBox(height: 30),

              TextFieldInput(
                textEditingController: _passwordController, 
                hintText: 'Enter your password', 
                textInputType: TextInputType.text,
                isPassword: true,
              ),

              const SizedBox(height: 30),

              InkWell(
                onTap: () {},
                child: Container(
                  child: const Text(
                    'Login'
                  ),
                  alignment: Alignment.center,
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4))
                    ),
                    color: blueColor,
                  ),
                ),
              ),

              const SizedBox(height: 12),

              Flexible(child: Container(), flex: 2,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: const Text(
                      "Don't have an account?  ",
                    ),
                    
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                      ),
                  
                      
                    ),
                  )
                ]
              )
            ]
          )
        ),
      )
    );
  }
}