import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class  MiddleScreen extends StatelessWidget {
  const MiddleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Material(

      child:  Container(
        color: Colors.black,

        padding:  EdgeInsets.symmetric(
            vertical: 50.0,
            horizontal:  context.isLargeSize? 400:context.isMobileTypeHandset?60: context.isMobileTypeTablet?100:20),
        child:   Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
          const Text("Projects",style: TextStyle(fontSize: 30, color: Colors.white),),
           const  SizedBox(height:20),

            ResponsiveGridRow(
                children: [
                  ResponsiveGridCol(
                    xs:12,
                    md: 6,
                    lg: 3,
                    child: const  ProjectWidget(title: "Ovaloop",
                      image: "assets/ovaloop.png",
                      url: "https://play.google.com/store/apps/details?id=com.ovaloop.ovaloop",
                    ),),


                  ResponsiveGridCol(
                    xs:12,
                    md: 6,
                    lg: 3,
                    child: const  ProjectWidget(title: "Patch",image: "assets/patch.png", url: "https://play.google.com/store/apps/details?id=com.patchapp.user",
                ),),

                  ResponsiveGridCol(
                    xs:12,
                    md: 6,
                    lg: 3,
                    child: const    ProjectWidget(title: "Patch Rider",image: "assets/patch_2.jpg", url: "https://play.google.com/store/apps/details?id=com.patch.patch_rider",)
             ),
                  ResponsiveGridCol(
                    xs:12,
                    md: 6,
                    lg: 3,
                    child: const   ProjectWidget(title: "Aponwola Kitchen",image: "assets/apon.png",  url: "https://play.google.com/store/apps/details?id=com.aponwola.app",)
              ),

                ]
            ),










          ],
        ),
      ),
    );
  }
}

class ProjectWidget extends StatelessWidget {
  final String title;
  final String? image;
  final String? url;

  const ProjectWidget({Key? key, required this.title, this.image, this.url }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: ()async{
          if(url!=null){
           await launchUrl(Uri.parse(url!));
          }
        },
        child: Column(
          children: [

            ClipRRect(
                borderRadius: BorderRadius.circular(30),

                child: Image.asset(image! )),
           const  SizedBox(height: 15,),
            Text(title,style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white60,
                fontSize: 20),),

          ],
        ),
      ),
    );
  }
}
