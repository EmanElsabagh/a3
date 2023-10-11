import 'package:a3/featues/a7/presentation/user/login.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';

import '../../../common_utils/common_widgets.dart';
class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final List<String> li = <String>['Male','Female'];

  final _formkey=GlobalKey<FormState>();
  TextEditingController fname=TextEditingController();
  TextEditingController lname=TextEditingController();
  TextEditingController password=TextEditingController();
  SingleValueDropDownController gender=SingleValueDropDownController();
  bool passwordvisiable=true;
  String gen = 'gender';
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Image.asset("assets/images/a4images/a9.png",width: 50,height: 50,),
                    ),
                    const SizedBox(height: 10.0,),
                    const Text("Sign Up",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
                    const SizedBox(height: 10.0,),
                    Form(
                      key: _formkey,
                        child: Column(
                          children: [
                            TextFormField(
                              cursorColor: Colors.white,
                              controller: fname,
                              decoration: CommonUtils.textFieldDecoration( 'Full Name',const Icon(Icons.person, color: Colors.grey,),null),
                              keyboardType: TextInputType.text,
                            ),
                            const SizedBox(height: 10.0,),
                            TextFormField(
                              cursorColor: Colors.white,
                              controller: lname,
                              decoration: CommonUtils.textFieldDecoration( 'Enter your Email or Phone Number',const Icon(Icons.email, color: Colors.grey,),null),
                              keyboardType: TextInputType.emailAddress,
                            ),
                            const SizedBox(height: 10.0,),
                            TextFormField(
                              cursorColor: Colors.white,
                              controller: password,
                              decoration: CommonUtils.textFieldDecoration( 'Enter your Password',const Icon(Icons.lock, color: Colors.grey,),IconButton(
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
                            ),
                            const SizedBox(height: 10.0,),
                            const SizedBox(height: 10.0,),
                            DropDownTextField(
                              controller: gender,
                              listSpace: 0,
                              listPadding: ListPadding(top: 5),
                              enableSearch: false,
                              textFieldDecoration: CommonUtils.textFieldDecoration( 'Select your gender',const Icon(Icons.person, color: Colors.grey,),null),
                              validator: (value) {
                                if (value == null) {
                                  return "Required field";
                                } else {
                                  return null;
                                }
                              },
                              dropDownList: const [
                                DropDownValueModel(name: 'Male', value: "male"),
                                DropDownValueModel(name: 'Female', value: "female"),
                              ],
                              listTextStyle: const TextStyle(color: Colors.black),
                              dropDownItemCount: 2,
                              onChanged: (val) {
                                setState(() {
                                  gender.dispose();
                                });
                              },
                            ),
                            const SizedBox(height: 10.0,),
                            CommonUtils.customButton(title: "Register"),
                            const SizedBox(height: 10.0,),
                             Row(
                              children: [
                                const Icon(Icons.verified_user,color: Colors.blue,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width:  MediaQuery.of(context).size.width*0.80,
                                      child: const Text("By Tapping 'Sign Up' you accept our ",style: TextStyle(color: Colors.grey, fontSize: 14),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        const Text("all ",style: TextStyle(color: Colors.grey, fontSize: 14,),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        InkWell( onTap: () {},
                                          child: const Text("terms",style: TextStyle(color: Colors.blue,decoration: TextDecoration.underline,fontSize: 14),
                                              overflow: TextOverflow.ellipsis,),),
                                        const Text(" and ",style: TextStyle(color: Colors.grey, fontSize: 14,),
                                            overflow: TextOverflow.ellipsis,
                                        ),
                                        InkWell( onTap: () {},
                                          child: const Text("conditions",style: TextStyle(color: Colors.blue,decoration: TextDecoration.underline,fontSize: 14),
                                              overflow: TextOverflow.ellipsis),),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 20.0,),
                            const Text("Or Register With",style: TextStyle(color: Colors.grey),),
                            const SizedBox(height: 10.0,),
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
                            const SizedBox(height: 20.0,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("Already have an account?",style: TextStyle(color: Colors.grey),),
                                TextButton(onPressed: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const Login()),);
                                }, child: const Text("Login",style: TextStyle(color: Colors.blue,decoration:TextDecoration.underline ),))
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
        ),
      ),
    );
  }
}
