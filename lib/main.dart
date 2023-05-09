import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stepper_drawer_ui/provider/provider.dart';
import 'package:stepper_drawer_ui/view/homeScreen.dart';

void main()
{
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) {
      return ChangeNotifierProvider(
        create: (context) => StepperProvider(),
        child: MaterialApp(
          useInheritedMediaQuery: true,
          debugShowCheckedModeBanner: false,
          routes: {
            '/':(context) => HomeScreen()
          },
        ),
      );
    },
  ));
}