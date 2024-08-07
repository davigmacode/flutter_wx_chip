import 'package:flutter/widgets.dart';
import 'package:wx_sheet/wx_sheet.dart';
import 'theme_data.dart';
import 'style_driven.dart';

abstract class WxChipThemePreset extends WxChipThemeData
    with WxSheetThemePreset<WxChipThemeData> {
  @protected
  WxChipThemePreset(
    this.context, {
    super.curve,
    super.duration,
  });

  @override
  final BuildContext context;

  @override
  WxDrivenChipStyle get style {
    return const WxDrivenChipStyle().merge(super.style).copyWith(
          direction: Axis.horizontal,
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          spacing: 8,
          minHeight: 25,
          iconSize: 16,
        );
  }
}

class WxChipThemeAdaptive extends WxChipThemePreset {
  WxChipThemeAdaptive(
    super.context, {
    super.curve,
    super.duration,
  });

  @override
  get baseTheme => WxSheetThemeToggleAdaptive(context);
}

class WxChipThemeM2 extends WxChipThemePreset {
  WxChipThemeM2(
    super.context, {
    super.curve,
    super.duration,
  });

  @override
  get baseTheme => WxSheetThemeToggleM2(context);
}

class WxChipThemeM3 extends WxChipThemePreset {
  WxChipThemeM3(
    super.context, {
    super.curve,
    super.duration,
  });

  @override
  get baseTheme => WxSheetThemeToggleM3(context);
}

class WxChipThemeIOS extends WxChipThemePreset {
  WxChipThemeIOS(
    super.context, {
    super.curve,
    super.duration,
  });

  @override
  get baseTheme => WxSheetThemeToggleIOS(context);
}
