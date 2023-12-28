import 'dart:math';
import 'package:flutter/material.dart';
import 'package:joezzy_web/colors.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class HeaderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return Column(
      children: [
        ResponsiveGridRow(children: [
          ResponsiveGridCol(
            xs: 12,
            xl: 6,
              lg: 6,

              child: const  PictureWidget()
          ),
          ResponsiveGridCol(
            xs: 12,
            xl: 6,
              lg: 6,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0,
                horizontal: 50),
                child:   Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    if (!context.isMobile)
                    const  SizedBox(height: 100,),
                    const  Text("Hi, I'm Joseph",style: TextStyle(fontSize: 70, color: Colors.white),),
                    const  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: const  Text(" A Software Engineer",style: TextStyle(fontSize: 30, color: Colors.white),),
                    ),
                    const  Text("with wealth of experience in building \n"
                        "applications with modern tools and technologies."
                        "\nI'm that passionate guy you need on you need on your team",style: TextStyle(fontSize: 20, color: Colors.white),),
                       Padding(
                      padding: const  EdgeInsets.symmetric(vertical: 20.0),
                      child: SocialAccounts(),
                    ),


                     const Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        children: [
                          ActionBtn(
                            text: "Message me now!",
                          ),
                          ActionBtn(
                            color: Colors.redAccent,
                            text: "Download Resume",
                          ),
                        ],
                      ),
                    )


                  ],
                ),
              )
          ),
        ])
      ],
    );
  }
}

class ActionBtn extends StatelessWidget {
  const ActionBtn({
    Key? key,
    this.color=Colors.black,
    this.text=""
  }) : super(key: key);
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){

    }, child:  Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20)
      ),
      child:  Text(text,style: const TextStyle(color: Colors.white),),
    ));
  }
}

class IntroductionWidget extends StatelessWidget {
  const IntroductionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        [
          " - Introduction".text.gray500.widest.sm.make(),
          10.heightBox,
          "Transforming your concept into reality with professional software engineering."
              .text
              .white
              .xl3
              .maxLines(5)
              .make()
              .w(context.isMobile
                  ? context.screenWidth
                  : context.percentWidth * 40),
          20.heightBox,
        ].vStack(),
        TextButton(
          onPressed: () {
            launch("https://api.whatsapp.com/send?phone=2348133102700");
          },
          child: const  Text("Message me."),
          // hoverColor: Vx.purple700,
          // shape: Vx.roundedSm,
          // color: Coolors.accentColor,
          // textColor: Coolors.primaryColor,
          // child: "Visit mtechviral.com".text.make(),
        ).h(50)
      ],
      // crossAlignment: CrossAxisAlignment.center,
      alignment: MainAxisAlignment.spaceEvenly,
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.code_off_outlined,
      size: 50,
      color: Coolors.accentColor,
    );
  }
}

class PictureWidget extends StatelessWidget {
  const PictureWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Stack(
      children: [
    Transform(
      alignment: Alignment.center,
      origin: Offset(context.percentWidth * 2, 0),
      transform: Matrix4.rotationY(pi),
      child: Image.asset(
        "assets/pic.png",
        fit: BoxFit.cover,
        // width: double.infinity,
        height: context.percentHeight * 70,
      ),
    ),
        Container(
          height: context.percentHeight * 70,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  colors: [
                    Coolors.primaryColor.withOpacity(0.1),
                    Coolors.primaryColor,
                  ],
                  stops: const [
                    0.0,
                    1
                  ])),
        ),
      ],
    );
    // return Transform(
    //   alignment: Alignment.center,
    //   origin: Offset(context.percentWidth * 2, 0),
    //   transform: Matrix4.rotationY(pi),
    //   child: Image.asset(
    //     "assets/pic.png",
    //     fit: BoxFit.cover,
    //     height: context.percentHeight * 80,
    //   ),
    // );
  }
}

class SocialAccounts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return [
     const Icon(
        MdiIcons.twitter,
        color: Colors.white,
      ).mdClick(() {
        launch("https://twitter.com/Jo_Nalz");
      }).make(),
      20.widthBox,
      const   Icon(
        MdiIcons.linkedin,
        color: Colors.white,
      ).mdClick(() {
        launch("https://www.linkedin.com/in/jo-onalo/");
      }).make(),
      20.widthBox,
    const  Icon(
        MdiIcons.github,
        color: Colors.white,
      ).mdClick(() {
        launch("https://github.com/Joezzy");
      }).make(),
      20.widthBox,
  const    Icon(
        MdiIcons.whatsapp,
        color: Colors.white,
      ).mdClick(() {
    var whatsappUrl = "whatsapp://send?phone=2348133102700&text=Hello Joseph";
    try {
      launchUrl(Uri.parse(whatsappUrl));
    } catch (e) {
      print(e);
    }      }).make()
    ].hStack();
  }
}
