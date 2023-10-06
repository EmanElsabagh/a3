import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
class Verification extends StatelessWidget {
  const Verification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 250, 10, 10),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image.asset("assets/images/a4images/a9.png",width: 80,height: 80,),
                  ),
                  const SizedBox(height: 10.0,),
                  const Text("Verification",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0),),
                  const SizedBox(height: 30.0,),
                  OTPTextField(
                    length: 4,
                    width: MediaQuery.of(context).size.width,
                    fieldWidth: 50,
                    style: const TextStyle(
                        fontSize: 17,
                      color: Colors.black
                    ),
                    textFieldAlignment: MainAxisAlignment.spaceAround,
                    fieldStyle: FieldStyle.underline,
                    onCompleted: (pin) {
                    },
                  ),
                  const SizedBox(height: 15.0,),
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: ElevatedButton(
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          elevation: 10.0),
                      child: const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text("Verify",style: TextStyle(color: Colors.white,fontSize: 15.0),),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
