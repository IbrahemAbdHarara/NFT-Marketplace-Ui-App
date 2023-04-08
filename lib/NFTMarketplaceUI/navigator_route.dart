

import 'package:flutter/Material.dart';

 class AppRoute{
 static GlobalKey<NavigatorState> navkey =GlobalKey<NavigatorState>();
static Future<Widget> navigationWidget(Widget widget)async{
 dynamic x=await  Navigator.of(navkey.currentContext!).push(MaterialPageRoute(builder: (context) {
return widget;

   },));
       return widget;
         
}
static popRoute(){
  Navigator.of(navkey.currentContext!).pop();}
static navigationpushReplacementWidget(Widget widget){
Navigator.of(navkey.currentContext!).pushReplacement(MaterialPageRoute(builder: ((context) {
  return widget;
})));

}
}