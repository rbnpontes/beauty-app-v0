import 'package:flutter/cupertino.dart';

class Responsive{
  static num pY(num size, {BuildContext context, BoxConstraints constraints}){
    if(context != null)
      return MediaQuery.of(context).size.height * (size/100);
    else if(constraints != null)
      return constraints.maxHeight * (size / 100);
    return 0;
  }
  static num pX(num size, {BuildContext context, BoxConstraints constraints}){
    if(context != null)
      return MediaQuery.of(context).size.width * (size / 100);
    else if(constraints != null)
      return constraints.maxWidth * (size / 100);
    return 0;
  }
}