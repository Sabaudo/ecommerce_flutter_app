import 'package:clot_ecommerce/common/widgets/button/basic_app_button.dart';
import 'package:clot_ecommerce/screens/login/pages/signin/create_account.dart';
import 'package:clot_ecommerce/screens/login/pages/signin/signin_password.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 80
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _signInText(context),
            SizedBox(height: 20,),
            _inputText(context, "Email Address"),
            Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 16),
              child: _continueButton(context),
            ),
            _createAccountText(context),
          ],
        ),
      ),
    );
  }

  Widget _signInText(BuildContext context) {
    return Text("Sign in", 
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
            MaterialPageRoute(builder: (context) => const SigninPassword()),
          );
    });
  }

  Widget _createAccountText(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "Don't have an Account?",
            style: TextStyle(fontSize: 12),
          ),
          TextSpan(
            text: " Create one",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            recognizer:
                TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const CreateAccount()),
                    );
                  },
          ),
        ],
      ),
    );
  }
}
