import 'package:flutter/material.dart';
import 'package:whatsappcopy/Screens/loginscreen.dart';
import 'package:whatsappcopy/Widgets/uihelper.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/image 1.png"),
            SizedBox(height: 20,),
            UiHelper.CustomText(text: "Welcome To WhatsApp", height: 20, color: Colors.black),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(text: "Read Out", height: 14),
                UiHelper.CustomText(text: " Privacy and Policy.", height: 14, color: Color(0xFF0C42CC)),
                UiHelper.CustomText(text: " Tap ""Agree and continue""", height: 14),
              ],
            ),
        SizedBox(height: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomText(text: "to accept the", height: 14),
            UiHelper.CustomText(text: " Teams of service.", height: 14, color: Color(0xFF0C42CC)),
          ],)
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(
          callback: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
          }, buttonname: "Agree and Continue"
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

    );
  }
}
