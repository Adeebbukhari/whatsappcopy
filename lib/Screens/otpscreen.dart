import 'package:flutter/material.dart';

import '../Widgets/uihelper.dart';

class OtpScreen extends StatelessWidget {

  String phonenumber;
  OtpScreen({required this.phonenumber});
  TextEditingController otp1controller = TextEditingController();
  TextEditingController otp2controller = TextEditingController();
  TextEditingController otp3controller = TextEditingController();
  TextEditingController otp4controller = TextEditingController();
  TextEditingController otp5controller = TextEditingController();
  TextEditingController otp6controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            children: [
              SizedBox(height: 80,),
              UiHelper.CustomText(text: "Verifiying Your Phone Number", height: 20, color: Color(0xFF00A884), fontweight: FontWeight.bold),
              SizedBox(height: 30,),
              UiHelper.CustomText(text: "You’ve tried to register +91 $phonenumber", height: 18),
              UiHelper.CustomText(text: "recently. Wait before requesting an sms or a call", height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(text: "with your code", height: 18),
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: UiHelper.CustomText(text: " Wrong number?", height: 18, color: Color(0xFF00A884)),
                )
              ],
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0XFFD9D9D9),
                    ),
                    child: TextField(
                      controller: otp1controller,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0XFFD9D9D9),
                    ),
                    child: TextField(
                      controller: otp2controller,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0XFFD9D9D9),
                    ),
                    child: TextField(
                      controller: otp3controller,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0XFFD9D9D9),
                    ),
                    child: TextField(
                      controller: otp4controller,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0XFFD9D9D9),
                    ),
                    child: TextField(
                      controller: otp5controller,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0XFFD9D9D9),
                    ),
                    child: TextField(
                      controller: otp6controller,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              UiHelper.CustomText(text: " didn't receive code?", height: 14, color: Color(0xFF00A884)),
            ],
      )
      ),
      floatingActionButton: UiHelper.CustomButton(
          callback: (){

          }, buttonname: "Next"
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
