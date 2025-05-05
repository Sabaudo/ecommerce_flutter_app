import 'package:clot_ecommerce/common/widgets/button/basic_app_button.dart';
import 'package:clot_ecommerce/core/configs/theme/app_colors.dart';
import 'package:clot_ecommerce/screens/login/pages/signin/forgot_password.dart';
import 'package:clot_ecommerce/screens/register/pages/register/more_details_register.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: appBarButton(context)
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 20
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _createAccText(context),
            SizedBox(height: 20,),
            _inputText(context, "Firstname"),
            SizedBox(height: 10,),
            _inputText(context, "Lastname"),
            SizedBox(height: 10,),
            _inputText(context, "Email Address"),
            SizedBox(height: 10,),
            _inputText(context, "Password"),
            SizedBox(height: 20,),
            _continueButton(context),
            SizedBox(height: 10,),
            _forgotPwText(context),
          ],
        ),
      ),
    );
  }



  Widget _createAccText(BuildContext context) {
    return Text("Create Account", 
    style: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold
      ),
    );
  }

  Widget _inputText(BuildContext context, String hint) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
        )
      )
    );
  }

  Widget _continueButton(BuildContext context) {
    return BasicAppButton(title: "Continue", 
    onPressed: (){
      Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MoreDetailsRegister()),
          );
    });
  }

  Widget _forgotPwText(BuildContext context) {
    return RichText(
      text: 
      TextSpan(
        children: [
          TextSpan(text: "Forgot Password?", style: TextStyle(fontSize: 12)),
          TextSpan(text: " Reset", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          recognizer:
                TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ForgotPassword()),
                    );
                  },
                )
        ]
      ),
    );
  }

  Widget appBarButton(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.only(
            left: 16,
          ),
          child: Ink(
            width: 40,
            height: 40,
            decoration: const ShapeDecoration(
              color: AppColors.secondBackground,
              shape: CircleBorder(),
            ),
            // color: Colors.white,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              padding: EdgeInsets.only(left: 5),
              icon: Icon(Icons.arrow_back_ios),
              iconSize: 16,
            ),
          ),
        );
  }
}