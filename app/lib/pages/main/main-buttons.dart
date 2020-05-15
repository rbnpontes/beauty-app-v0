import 'package:app/components/Buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainRegisterButton extends StatelessWidget{
  final Function onPress;
  const MainRegisterButton({this.onPress}) : super();

  @override
  Widget build(BuildContext context) {
    return Button(label: 'CADASTRAR', onPress: this.onPress, color: Color(0xFF3B3B3B), labelColor: Colors.white);
  } 
}
class MainTrialButton extends ButtonBase{
  MainTrialButton({Function onPress}) : super(onPress : onPress);
  @override
  Widget build(BuildContext context) {
    return Button(
        label : 'Experimentar', 
        onPress: this.onPress, 
        color: Colors.transparent,
        labelColor: Colors.white,
        border: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3), side: BorderSide(color: Colors.white, width: 1.5))
      );
  }
}