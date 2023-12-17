import 'package:a3/featues/a7/presentation/user/forget%20password.dart';
import 'package:a3/featues/a7/presentation/user/signup.dart';
import 'package:flutter/material.dart';

import '../../../common_utils/common_widgets.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();
  bool passwordvisiable=true;
  final _formkey=GlobalKey<FormState>();


  bool _radioSelected = false;

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 70, 10, 10),
          child: Center(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image.asset("assets/images/a4images/a9.png",width: 50,height: 50,),
                ),
                const SizedBox(height: 15.0,),
                const Text("Welcome Back"),
                const Text("Tele Medilab",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30.0),),
                const SizedBox(height: 50.0,),
                Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      TextFormField(
                        cursorColor: Colors.white,
                        controller: email,
                        decoration: CommonUtils.textFieldDecoration( 'Enter your Email or Phone Number',const Icon(Icons.email, color: Colors.grey,),null),
                        validator: (val){
                          if(val ==null || val.isEmpty){
                            return 'this field required';
                          }
                        },
                      ),
                      const SizedBox(height: 7.0,),
                      TextFormField(
                        cursorColor: Colors.white,
                        controller: password,
                        decoration:  CommonUtils.textFieldDecoration( 'Enter your Password',const Icon(Icons.lock, color: Colors.grey,),IconButton(
                          onPressed: (){
                            setState(() {
                              passwordvisiable=!passwordvisiable;
                            });
                          },
                          icon: Icon(
                            passwordvisiable? Icons.visibility:Icons.visibility_off,
                            color: Colors.grey,
                          ),
                        )),
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: passwordvisiable,
                        validator: (val){
                          if(val ==null || val.isEmpty){
                            return 'this field required';
                          }
                        },
                      ),
                      const SizedBox(height: 7.0,),
                     CommonUtils.customButton(title: 'Login',onTap: (){
                       Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => const Signup()),);
                     }),
                      const SizedBox(height: 7.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           Row(
                            children: [
                              Checkbox(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                tristate: true,
                                value: _radioSelected,
                                onChanged: (bool? newValue){
                                  setState(() {
                                          _radioSelected = !_radioSelected;
                                          // _radioVal = 'male';
                                  });
                                },
                                activeColor: const Color(0xff06bbfb),
                              ),
                              // ),
                              // Radio(
                              //   value: 1,
                              //   groupValue: _radioSelected,
                              //   activeColor: Colors.blue,
                              //   onChanged: (value) {
                              //     setState(() {
                              //       _radioSelected = value??1;
                              //       _radioVal = 'male';
                              //     });
                              //   },
                              // ),
                              const Text('Keep Sign in',),
                            ],
                          ),
                          TextButton(onPressed: (){Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Forgetpass()),);
                          }, child: const Text("Forget Password?",style: TextStyle(color:Colors.blue ,decoration: TextDecoration.underline),))
                        ],
                      ),
                     const SizedBox(height: 7.0,),
                     TextButton(onPressed: (){}, child: const Text("Or Login With",style: TextStyle(color: Colors.grey),),),
                      const SizedBox(height: 15.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(color: Colors.black,width: 1.0),
                            ),
                            child: ClipRRect(
                                borderRadius:const BorderRadius.all(Radius.circular(16)),
                                child: Image.asset("assets/images/a4images/a3.jpg",width: 70,height: 50,fit: BoxFit.cover,)),
                          ),
                          const SizedBox(width: 7.0,),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(color: Colors.black,width: 1.0),
                            ),
                            child: ClipRRect(
                                borderRadius:const BorderRadius.all(Radius.circular(16)),
                                child: Image.asset("assets/images/a4images/a3.jpg",width: 70,height: 50,fit: BoxFit.cover,)),
                          ),
                          const SizedBox(width: 7.0,),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(color: Colors.black,width: 1.0),
                            ),
                            child: ClipRRect(
                                borderRadius:const BorderRadius.all(Radius.circular(16)),
                                child: Image.asset("assets/images/a4images/a3.jpg",width: 70,height: 50,fit: BoxFit.cover,)),
                          ),
                        ],
                      ),
                      const SizedBox(height: 50.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Already have an account?",style: TextStyle(color: Colors.grey),),
                          TextButton(onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Signup()),);
                          }, child: const Text("Sign Up",style: TextStyle(color: Colors.blue,decoration:TextDecoration.underline ),))
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
