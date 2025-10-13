import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsappcopy/Widgets/uihelper.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phoneController=TextEditingController();
  String selectedCountry = "India";
  List<String>countries=[
    "India",
    "USA",
    "China",
    "Pakistan",
    "Iran",
    "Iraq",
    "Qatar",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 80,),
            UiHelper.CustomText(text: "Enter Your Phone Number", height: 20, color: Color(0xFF00A884), fontweight: FontWeight.bold),
            SizedBox(height: 30,),
            UiHelper.CustomText(text: "WhatsApp will need to verify your phone", height: 18),
            UiHelper.CustomText(text: "number. Carrier charges may apply.", height: 18),
            UiHelper.CustomText(text: "What’s my number?", height: 18, color: Color(0xFF00A884)),
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.only(left: 60, right: 60),
              child: DropdownButtonFormField(items: countries.map((String country){
                return DropdownMenuItem(child: Text(country.toString()), value: country, );
              }).toList(), onChanged: (value){
                setState(() {
                  selectedCountry = value!;
                });
              },value: selectedCountry,decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF00A884)),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF00A884)),
                ),
              ),),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 60, right: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 50,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "+91",
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF00A884)),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF00A884)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF00A884)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: phoneController,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF00A884))
                        )
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(
          callback: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
          }, buttonname: "Next"
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
