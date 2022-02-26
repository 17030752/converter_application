import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

import '../screens/fruitapp_screen.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/fruitapp': (BuildContext context) => FruitApp(),
//'/convert':(BuildContext context)=> Conversor()
  };
}
