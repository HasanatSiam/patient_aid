import 'package:flutter/material.dart';
import 'package:patient_aid/utils/dimensions.dart';

class ResponsiveScreen extends StatelessWidget {
  final Widget webScreen;
  final Widget mobileScreen;
  const ResponsiveScreen({Key? key, required this.webScreen, required this.mobileScreen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        if(constraints.maxWidth > webScreenSize){
            return webScreen;
        }
          return mobileScreen;
      },
    );
  }
}