import 'package:a3/featues/common_utils/common_widgets.dart';
import 'package:flutter/material.dart';

class Forgetpass extends StatelessWidget {
   Forgetpass({super.key});
  final GlobalKey? formkey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    TextEditingController email=TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 250, 10, 10),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image.asset("assets/images/a4images/a9.png",width: 50,height: 50,),
                ),
                const SizedBox(height: 15.0,),
                const Text("Forget Password",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40.0),),
                SafeArea(
                  key: formkey,
                    child: Column(
                      children: [
                        TextFormField(
                          cursorColor: Colors.white,
                          controller: email,
                          decoration: CommonUtils.textFieldDecoration("Enter your Email or Phone Number", Icon(Icons.email),null),
                          //keyboardType: TextInputType.emailAddress,
                        ),
                        const SizedBox(height: 10.0,),
                        CommonUtils.customButton(title: "Submit"),
                      ],
                    ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
