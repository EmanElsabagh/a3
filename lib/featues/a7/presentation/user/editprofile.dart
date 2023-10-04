import 'package:flutter/material.dart';
class Editprofile extends StatefulWidget {
  const Editprofile({super.key});

  @override
  State<Editprofile> createState() => _EditprofileState();
}

class _EditprofileState extends State<Editprofile> {
  @override
  Widget build(BuildContext context) {
    final _formkey=GlobalKey<FormState>();
    TextEditingController name=TextEditingController();
    TextEditingController email=TextEditingController();
    TextEditingController password=TextEditingController();
    TextEditingController newpassword=TextEditingController();
    TextEditingController confirmpassword=TextEditingController();
    TextEditingController gender=TextEditingController();
    bool passwordvisiable=true;

    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Profile",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.white10,
        elevation: 0.0,
        leading: Icon(Icons.arrow_back,color: Colors.black,),
        actions: [
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
                      Icon(Icons.ac_unit_outlined,color: Colors.blue,),
                    ],
                  ),
                  SizedBox(height: 30.0,),
                  Form(
                      key: _formkey,
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
                              hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                              prefixIcon: Icon(Icons.person, color: Colors.grey,),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                borderSide:BorderSide(width: 1,color: Colors.white),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                borderSide: BorderSide(width: 1,color: Colors.white),
                              ),
                            ),
                            keyboardType: TextInputType.text,
                          ),
                          SizedBox(height: 7.0,),
                          TextFormField(
                            cursorColor: Colors.white,
                            controller: email,
                            decoration: InputDecoration(
                              hintText: 'Enter your Email or Phone Number',
                              hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                              prefixIcon: Icon(Icons.email, color: Colors.grey,),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                borderSide:BorderSide(width: 1,color: Colors.white),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                borderSide: BorderSide(width: 1,color: Colors.white),
                              ),
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          SizedBox(height: 7.0,),
                          TextFormField(
                            cursorColor: Colors.white,
                            controller: password,
                            decoration: InputDecoration(
                                hintText: 'Enter your Password',
                                hintStyle: TextStyle(color: Colors.grey),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: BorderSide(width: 1, color: Colors.white),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: BorderSide(width: 1,color: Colors.white),
                                ),
                                prefixIcon: Icon(Icons.lock,color: Colors.grey,),
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
                          SizedBox(height: 7.0,),
                          TextFormField(
                            cursorColor: Colors.white,
                            controller: newpassword,
                            decoration: InputDecoration(
                                hintText: 'Enter your Password',
                                hintStyle: TextStyle(color: Colors.grey),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: BorderSide(width: 1, color: Colors.white),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: BorderSide(width: 1,color: Colors.white),
                                ),
                                prefixIcon: Icon(Icons.lock,color: Colors.grey,),
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
                          SizedBox(height: 7.0,),
                          TextFormField(
                            cursorColor: Colors.white,
                            controller: confirmpassword,
                            decoration: InputDecoration(
                                hintText: 'Enter your Password',
                                hintStyle: TextStyle(color: Colors.grey),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: BorderSide(width: 1, color: Colors.white),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: BorderSide(width: 1,color: Colors.white),
                                ),
                                prefixIcon: Icon(Icons.lock,color: Colors.grey,),
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
                          SizedBox(height: 7.0,),
                          TextFormField(
                            controller: gender,
                            decoration: InputDecoration(
                              hintText: 'Select A Gender',

                              hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                              prefixIcon: Icon(Icons.share, color: Colors.grey,),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                borderSide:BorderSide(width: 1,color: Colors.white),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                borderSide: BorderSide(width: 1,color: Colors.white),
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
