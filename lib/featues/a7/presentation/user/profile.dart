import 'package:flutter/material.dart';
class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white10,
        title: Text("My Profile",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
        leading: Icon(Icons.arrow_back_rounded,color: Colors.black,),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image.asset("assets/images/a4images/a9.png",width: 80,height: 80,fit: BoxFit.cover,),
                ),
                SizedBox(height: 10.0,),
                const Text("William Henarry",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
                SizedBox(height: 10.0,),
                const Text("Williamhenry123@gmail.com",style: TextStyle(color: Colors.grey),),
                SizedBox(height: 30.0,),
                prfiledetails(Icons.edit, "Edite profile", ),
                SizedBox(height: 7.0,),
                prfiledetails(Icons.settings, "Settings& privacy policy",),
                SizedBox(height: 7.0,),
                prfiledetails(Icons.question_mark_outlined, "Help Center",),
                SizedBox(height: 7.0,),
                prfiledetails(Icons.history, "History"),
                SizedBox(height: 7.0,),
                prfiledetails(Icons.logout, "Log Out"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget prfiledetails(icon1,txt){
return Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Row(

      children: [
        IconButton(onPressed: (){}, icon: Icon(icon1,color: Colors.blue,)),
        Text(txt),
      ],
    ),
    Icon(Icons.arrow_right_outlined,color: Colors.black,),
  ],
  );
}
