import 'package:flutter/material.dart';
import 'package:joezzy_web/colors.dart';
import 'package:joezzy_web/footer.dart';
import 'package:joezzy_web/middle.dart';
import 'package:joezzy_web/skill.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:velocity_x/velocity_x.dart';

import 'header.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Coolors.primaryColor,
      child: VStack([
        HeaderScreen(),
        if (context.isMobile) IntroductionWidget().p16(),
         SkillScreen(),
        MiddleScreen(),
        FooterScreen(),
      ]).scrollVertical(),
    );
  }
}

