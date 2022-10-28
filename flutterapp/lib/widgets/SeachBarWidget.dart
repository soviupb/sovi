import 'package:flutter/material.dart';
import 'package:flutterapp/utils/custom_colors.dart';

class SearchBarWidget extends StatelessWidget{
  
  Widget build(BuildContext context){
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(
        left: 8.0,
        right: 8.0

      ),
      height: 50.0,
      decoration: BoxDecoration(
        color: CustomColors.SoviGris,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: TextField(),
    );
  }
}