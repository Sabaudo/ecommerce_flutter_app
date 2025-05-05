import 'package:clot_ecommerce/core/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';

class MoreDetailsRegister extends StatefulWidget {
  const MoreDetailsRegister({super.key});

  @override
  State<MoreDetailsRegister> createState() => _MoreDetailsRegisterState();
}

class _MoreDetailsRegisterState extends State<MoreDetailsRegister> {
  String? _selectedGender;

  void _selectGender(String gender) {
    setState(() {
      _selectedGender = gender;
    });
  }

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
            _moreDetailsText(context),
            SizedBox(height: 30,),
            _questionText(context, "Who do you shop for?"),
            SizedBox(height: 10,),
            _genderRow(context),
            SizedBox(height: 30,),
            _questionText(context, "How old are you?"),
          ],
        ),
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

  Widget _moreDetailsText(BuildContext context) {
    return Text("Tell Us About Yourself", 
    style: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold
      ),
    );
  }

  Widget _questionText(BuildContext context, String question) {
    return Text(question, 
    style: TextStyle(
      fontSize: 16,
      ),
    );
  }

  Widget _genderButton(String label, String value) {
    final bool selected = _selectedGender == value;

    return ElevatedButton(
      onPressed: () => _selectGender(value),
      style: ElevatedButton.styleFrom(
        backgroundColor: selected ? AppColors.primary : AppColors.secondBackground,
        // foregroundColor: selected ? Colors.white : Colors.black,
        minimumSize: Size.fromHeight(50),
      ),
      child: Text(
      label,
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w400
        ),
      ),
    );
  }
  Widget _genderRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(child: _genderButton("Men", "Men")),
        SizedBox(width: 16),
        Expanded(child: _genderButton("Women", "Women")),
        SizedBox(width: 16),
        Expanded(child: _genderButton("Both", "Both")),
      ],
    );
  }
}