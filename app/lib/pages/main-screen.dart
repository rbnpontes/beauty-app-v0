import 'package:app/common/responsive.dart';
import 'package:app/components/Buttons.dart';
import 'package:app/constants.dart';
import 'package:app/pages/main/main-buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget appTitle(){
  return 
  Container(
    padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
    child:
      Center(
        child: Text(APP_NAME, style: TextStyle(fontSize: 45, color: Colors.white), textAlign: TextAlign.center)
      )
  );
}
Widget appButtons(BuildContext context, num width){
  num padding = Responsive.pX(15, context: context);
  return Container(
    padding: EdgeInsets.fromLTRB(padding, 0, padding, 50),
    child: 
      Column(
        children: [
          Row(
            children: [
              Expanded(child: Padding(child: Button(label : 'ENTRAR', onPress: ()=> { print('Pressed on Enter')}), padding: EdgeInsets.fromLTRB(0, 0, 5, 0))),
              Expanded(child: Padding(child: MainRegisterButton(onPress: ()=> { print('Pressed on Register')}), padding: EdgeInsets.fromLTRB(5, 0, 0, 0))),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
          SizedBox(
            child: MainTrialButton(onPress : ()=> { print('Pressed on Trial')}),
            width: width,
          )
        ],
      )
  );
}

Widget mainContent(BuildContext context){
  num fullX = Responsive.pX(100, context: context);
  return Stack(
    children: [
      Positioned(child: appTitle(), top: 0, width: fullX),
      Positioned(child: appButtons(context, fullX), bottom: 0, width: fullX)
    ]
  );
}
class MainScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/TheBeauty-HomeBG.png'), fit: BoxFit.cover),
        ),
        constraints: BoxConstraints.expand(),
        child: LayoutBuilder(builder: (ctx, constraints) => mainContent(ctx))
      )
    );
  }
}