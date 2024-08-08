import 'package:flutter/material.dart';
import 'package:theme_patrol/theme_patrol.dart';
import 'package:wx_chip/wx_chip.dart';
import 'package:wx_text/wx_text.dart';
import 'theme_picker.dart';
import 'sample_appearance.dart';
import 'sample_disabled.dart';
import 'sample_severity.dart';
import 'sample_compound.dart';
import 'sample_driven.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ThemePatrol(
      themes: {
        'm2': ThemeConfig.withMode(
          description: 'Material 2',
          light: ThemeData.light(useMaterial3: false),
          dark: ThemeData.dark(useMaterial3: false),
          extensionsBuilder: [
            (context) => WxChipThemeM2(context),
          ],
        ),
        'm3': ThemeConfig.withMode(
          description: 'Material 3',
          light: ThemeData.light(useMaterial3: true),
          dark: ThemeData.dark(useMaterial3: true),
          extensionsBuilder: [
            (context) => WxChipThemeM3(context),
          ],
        ),
        'ios': ThemeConfig.withMode(
          description: 'IOS',
          light: ThemeData.light(useMaterial3: false),
          dark: ThemeData.dark(useMaterial3: false),
          extensionsBuilder: [
            (context) => WxChipThemeIOS(context),
          ],
        ),
      },
      initialTheme: 'm2',
      builder: (context, theme, child) {
        return MaterialApp(
          title: 'WxAlert Demo',
          theme: theme.lightData,
          darkTheme: theme.darkData,
          themeMode: theme.mode,
          home: const MyHomePage(),
          builder: theme.bootstrap(),
        );
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 40),
              WxText.displayMedium(
                'WxChip',
                gradient: LinearGradient(
                  colors: [
                    Colors.green,
                    Colors.blue,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                fontWeight: FontWeight.bold,
                letterSpacing: -2,
              ),
              SizedBox(height: 10),
              ThemePicker(),
              SizedBox(height: 40),
              SampleAppearance(),
              SizedBox(height: 20),
              SampleDisabled(),
              SizedBox(height: 20),
              SampleSeverity(),
              SizedBox(height: 20),
              SampleCompound(),
              SizedBox(height: 20),
              SampleDriven(),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
