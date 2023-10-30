import 'package:a3/featues/a9/presentation/content/contentfunction.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: contents.length,

                itemBuilder: (_,i){
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(contents[i].image,height: 300,),
                    Text(contents[i].title,style: TextStyle(color: Colors.teal,fontSize: 25.0),),
                    Text(contents[i].description,style: TextStyle(color: Colors.grey,),overflow: TextOverflow.ellipsis,),
                  ],
                );
                }
            ),
          ),
          /*Container(
            child: Row(
              children: [
                List<Container>.generate(contents.length, (index) => Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                ),
              ],
            ),
          ),*/
        ],
      ),
    );
  }
}
