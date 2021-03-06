import 'package:easy_nav/easy_nav.dart';
import 'package:flutter/material.dart';
import 'package:jwacademicsweb/core/app_colors.dart';
import 'package:jwacademicsweb/ui/widgets/responsive_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.primary,
      padding: EdgeInsets.all(40),
      child: Column(
        children: [
          if(ResponsiveLayout.isLargeScreen(context))
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Row(
                children: [
                  Expanded(child: _Intro()),
                  SizedBox(width: 200,),
                  Expanded(child: _Logo()),
                ],
              ),
            ),
          if(!ResponsiveLayout.isLargeScreen(context))
            _Logo(),
          if(!ResponsiveLayout.isLargeScreen(context))
            _Intro(),
        ],
      ),
    );
  }
}

class _Intro extends StatelessWidget {
  const _Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text("Welcome to JW Academics", style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold)),
        SizedBox(height: 20),
        Text("We provide Academic Assignment Help to Diploma, Degree, Master and PHD full-time/part-time College/ University students.",

            style: TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w300, height: 1.5)),
        SizedBox(height: 20),
        InkWell(
          onTap: (){
            NavManager().goToNamed("/register");
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors.lightSalmonColor,
            ),
            child: Text("Get Started", style: TextStyle(
              color: AppColors.primary,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),),
          ),
        ),
      ],
    );
  }
}

class _Logo extends StatelessWidget {
  const _Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/img.png", scale: 0.5, width: 400, fit: BoxFit.cover,);
  }
}


