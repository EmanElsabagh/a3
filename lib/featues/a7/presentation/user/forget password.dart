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
                          decoration: InputDecoration(
                            hintText: 'Enter your Email or Phone Number',
                            hintStyle: const TextStyle(fontSize: 15, color: Colors.grey),
                            prefixIcon: const Icon(Icons.email, color: Colors.grey,),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              borderSide:const BorderSide(width: 1,color: Colors.white),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              borderSide: const BorderSide(width: 1,color: Colors.white),
                            ),
                          ),
                          //keyboardType: TextInputType.emailAddress,
                        ),
                        const SizedBox(height: 10.0,),
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
                              padding: EdgeInsets.all(20.0),
                              child: Text("Submit",style: TextStyle(color: Colors.white,fontSize: 15.0),),
                            ),
                          ),
                        ),
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
