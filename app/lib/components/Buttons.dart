import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
abstract class ButtonBase extends StatelessWidget{
  final Function onPress;
  ButtonBase({this.onPress}) : super();
}

class Button extends ButtonBase{
  final String label;
  final EdgeInsetsGeometry padding;
  final Color color;
  final Color labelColor;
  final ShapeBorder border;
  Button({
    @required this.label, 
    Function onPress,
    this.padding,
    this.color,
    this.labelColor,
    this.border
  }) : super(onPress: onPress);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(this.label.toUpperCase(), style: TextStyle(color: this.labelColor)), 
      shape: this.border,
      onPressed: this.onPress, padding: this.padding, color: this.color);
  }
}