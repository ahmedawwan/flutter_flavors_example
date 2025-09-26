import 'package:flutter/material.dart';
import 'package:flutter_flavors_example/app.dart';
import 'package:flutter_flavors_example/flavor_config.dart';

void main() {
  FlavorConfig.staging();
  runApp(const MyApp());
}
