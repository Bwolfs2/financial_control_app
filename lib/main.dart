import 'package:flutter/material.dart';
import 'package:financial_control_app/app/app_module.dart';
import 'package:flutter/foundation.dart'
    show debugDefaultTargetPlatformOverride;

void main(){
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  runApp(AppModule());
}
