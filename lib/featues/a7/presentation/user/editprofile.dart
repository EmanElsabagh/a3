import 'package:flutter/material.dart';
class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final _formKey=GlobalKey<FormState>();
  TextEditingController name=TextEditingController();
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();
  TextEditingController newPassword=TextEditingController();
  TextEditingController confirmPassword=TextEditingController();
  TextEditingController gender=TextEditingController();
  bool passwordVisiable=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Profile",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.white10,
        elevation: 0.0,
        leading: const Icon(Icons.arrow_back,color: Colors.black,),
        actions: const [
          Icon(Icons.verified_user_rounded,color:Colors.grey,),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image.asset("assets/images/a4images/a9.png",width: 80,height: 80,fit: BoxFit.cover,),
                      ),
                      const Icon(Icons.ac_unit_outlined,color: Colors.blue,),
                    ],
                  ),
                  const SizedBox(height: 30.0,),
                  Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            cursorColor: Colors.white,
                            controller: name,
                            decoration: InputDecoration(
                              fillColor: Colors.white10,
                              filled: true,
                              // focusColor: Colors.pink,
                              hintText: 'Full Name',
                              hintStyle: const TextStyle(fontSize: 15, color: Colors.grey),
                              prefixIcon: const Icon(Icons.person, color: Colors.grey,),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                borderSide:const BorderSide(width: 1,color: Colors.white),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                borderSide: const BorderSide(width: 1,color: Colors.white),
                              ),
                            ),
                            keyboardType: TextInputType.text,
                          ),
                          const SizedBox(height: 7.0,),
                          TextFormField(
                            cursorColor: Colors.white,
                            controller: email,
                            decoration: InputDecoration(
                              hintText: 'Enter your Email or Phone Number',
                              hintStyle: const TextStyle(fontSize: 15, color: Colors.grey),
                              prefixIcon: const Icon(Icons.email, color: Colors.grey,),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                borderSide:const BorderSide(width: 1,color: Colors.white),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                borderSide: const BorderSide(width: 1,color: Colors.white),
                              ),
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          const SizedBox(height: 7.0,),
                          TextFormField(
                            cursorColor: Colors.white,
                            controller: password,
                            decoration: InputDecoration(
                                hintText: 'Enter your Password',
                                hintStyle: const TextStyle(color: Colors.grey),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: const BorderSide(width: 1, color: Colors.white),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: const BorderSide(width: 1,color: Colors.white),
                                ),
                                prefixIcon: const Icon(Icons.lock,color: Colors.grey,),
                                suffixIcon: IconButton(
                                  onPressed: (){
                                    setState(() {
                                      passwordVisiable=!passwordVisiable;
                                    });
                                  },
                                  icon: Icon(
                                    passwordVisiable? Icons.visibility:Icons.visibility_off,
                                    color: Colors.grey,
                                  ),
                                )
                            ),
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: passwordVisiable,
                          ),
                          const SizedBox(height: 7.0,),
                          TextFormField(
                            cursorColor: Colors.white,
                            controller: newPassword,
                            decoration: InputDecoration(
                                hintText: 'Enter your Password',
                                hintStyle: const TextStyle(color: Colors.grey),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: const BorderSide(width: 1, color: Colors.white),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: const BorderSide(width: 1,color: Colors.white),
                                ),
                                prefixIcon: const Icon(Icons.lock,color: Colors.grey,),
                                suffixIcon: IconButton(
                                  onPressed: (){
                                    setState(() {
                                      passwordVisiable=!passwordVisiable;
                                    });
                                  },
                                  icon: Icon(
                                    passwordVisiable? Icons.visibility:Icons.visibility_off,
                                    color: Colors.grey,
                                  ),
                                )
                            ),
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: passwordVisiable,
                          ),
                          const SizedBox(height: 7.0,),
                          TextFormField(
                            cursorColor: Colors.white,
                            controller: confirmPassword,
                            decoration: InputDecoration(
                                hintText: 'Enter your Password',
                                hintStyle: const TextStyle(color: Colors.grey),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: const BorderSide(width: 1, color: Colors.white),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: const BorderSide(width: 1,color: Colors.white),
                                ),
                                prefixIcon: const Icon(Icons.lock,color: Colors.grey,),
                                suffixIcon: IconButton(
                                  onPressed: (){
                                    setState(() {
                                      passwordVisiable=!passwordVisiable;
                                    });
                                  },
                                  icon: Icon(
                                    passwordVisiable? Icons.visibility:Icons.visibility_off,
                                    color: Colors.grey,
                                  ),
                                )
                            ),
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: passwordVisiable,
                          ),
                          const SizedBox(height: 7.0,),
                          TextFormField(
                            controller: gender,
                            decoration: InputDecoration(
                              hintText: 'Select A Gender',

                              hintStyle: const TextStyle(fontSize: 15, color: Colors.grey),
                              prefixIcon: const Icon(Icons.share, color: Colors.grey,),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                borderSide:const BorderSide(width: 1,color: Colors.white),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                borderSide: const BorderSide(width: 1,color: Colors.white),
                              ),
                            ),
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
    );
  }
}
