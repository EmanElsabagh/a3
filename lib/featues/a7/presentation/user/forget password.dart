import 'package:flutter/material.dart';

class Forgetpass extends StatelessWidget {
  const Forgetpass({super.key});
  @override
  Widget build(BuildContext context) {
    TextEditingController email=TextEditingController();
    final _formkey=GlobalKey<FormState>();
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
                SizedBox(height: 15.0,),
                Text("Forget Password",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40.0),),
                SafeArea(
                  key: _formkey,
                    child: Column(
                      children: [
                        TextFormField(
                          cursorColor: Colors.white,
                          controller: email,
                          decoration: InputDecoration(
                            hintText: 'Enter your Email or Phone Number',
                            hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                            prefixIcon: Icon(Icons.email, color: Colors.grey,),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              borderSide:BorderSide(width: 1,color: Colors.white),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              borderSide: BorderSide(width: 1,color: Colors.white),
                            ),
                          ),
                          //keyboardType: TextInputType.emailAddress,
                        ),
                        SizedBox(height: 10.0,),
                        Container(
                          margin: EdgeInsets.all(10.0),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: ElevatedButton(
                            onPressed: (){},
                            style: ElevatedButton.styleFrom(
                                primary: Colors.blue,
                                elevation: 10.0),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
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
