import 'package:flutter/material.dart';
import 'package:joezzy_web/header.dart';


class FooterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 200,
      color: Colors.black54,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SocialAccounts(),
          ],
        ));

  }
}
