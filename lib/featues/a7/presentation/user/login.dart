import 'package:a3/featues/a7/presentation/user/forget%20password.dart';
import 'package:a3/featues/a7/presentation/user/signup.dart';
import 'package:flutter/material.dart';

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
                      const SizedBox(height: 7.0,),
                      TextFormField(
                        cursorColor: Colors.white,
                        controller: password,
                        decoration: InputDecoration(
                            hintText: 'Enter your Password',
                            hintStyle: const TextStyle(color: Colors.grey),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              borderSide: const BorderSide(width: 1, color: Colors.white),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              borderSide: const BorderSide(width: 1,color: Colors.white),
                            ),
                            prefixIcon: const Icon(Icons.lock,color: Colors.grey,),
                            suffixIcon: IconButton(
                              onPressed: (){
                                setState(() {
                                  passwordvisiable=!passwordvisiable;
                                });
                              },
                              icon: Icon(
                                passwordvisiable? Icons.visibility:Icons.visibility_off,
                                color: Colors.grey,
                              ),
                            )
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: passwordvisiable,
                      ),
                      const SizedBox(height: 7.0,),
                      Container(
                        margin: const EdgeInsets.all(15.0),
                        //padding: EdgeInsets.all(20.0),
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
                            child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 15.0),),
                          ),
                        ),
                      ),
                      const SizedBox(height: 7.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            children: [
                              Text('Keep Sign in',),
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
