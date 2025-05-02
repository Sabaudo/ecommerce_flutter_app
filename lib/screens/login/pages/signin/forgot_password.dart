import 'package:clot_ecommerce/common/widgets/button/basic_app_button.dart';
import 'package:clot_ecommerce/core/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

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
            _forgotPwText(context),
            SizedBox(height: 20,),
            _inputText(context, "Enter Email address"),
            SizedBox(height: 20,),
            _continueButton(context),
          ],
        ),
      ),
    );
  }

  Widget _forgotPwText(BuildContext context) {
    return Text("Forgot Password", 
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
      // Navigator.pushReplacement(
      //       context,
      //       MaterialPageRoute(builder: (context) => const SigninPassword()),
      //     );
    });
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