
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:velocity_x/velocity_x.dart';

class SkillScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return     Padding(
      padding:  EdgeInsets.symmetric(vertical: 50.0,
          horizontal:  context.isLargeSize? 200:context.isMobileTypeHandset?60: context.isMobileTypeTablet?100:20),
      child: ResponsiveGridRow(
        crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ResponsiveGridCol(

              xs:12,
              md: 4,
              lg: 3,
              child: SkillCard(text: "Flutter", image: "assets/flutter.png",),),
            ResponsiveGridCol(
              xs:12,
              md: 4,
              lg: 3,
              child: SkillCard(text: "Firebase", image: "assets/kotlinn.png",),),

            ResponsiveGridCol(
              xs:12,
              md: 4,
              lg: 3,
              child: SkillCard(text: "Jetpack-Compose", image: "assets/compose.png",),),
          ResponsiveGridCol(

          xs:12,
          md: 4,
          lg: 3,
          child: SkillCard(text: "iOS", image: "assets/ios.png",),),
            ResponsiveGridCol(
              xs:12,
              md: 4,
              lg: 3,
              child: SkillCard(text: "Android", image: "assets/android.png",),),
            ResponsiveGridCol(
              xs:12,
              md: 4,
              lg: 3,
              child: SkillCard(text: "Firebase", image: "assets/firebase.png",),),
            ResponsiveGridCol(
              xs:12,
              md: 4,
              lg: 3,
              child: SkillCard(text: "CI/CD", image: "assets/CI CD.webp",),),
            ResponsiveGridCol(
              xs:12,
              md: 4,
              lg: 3,
              child: SkillCard(text: "Git", image: "assets/git2.png",),),



          ]
      ),
    );
  }
}

class SkillCard extends StatelessWidget {
  const SkillCard({
    Key? key,
    this.image="", this.text=""
  }) : super(key: key);
 final   String image;
 final   String text;
  @override
  Widget build(BuildContext context) {
    return   Container(
      padding: const EdgeInsets.symmetric(vertical: 50.0),
      margin: const EdgeInsets.symmetric(horizontal: 10,
      vertical: 10),

      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(20)
      ),
      child:Column(
        children: [
          Image.asset(image,height: 100,),
          SizedBox(height: 20,),
          Text(text,style: TextStyle(color: Colors.white, fontSize: 20),),
        ],
      ),
    );
  }
}
