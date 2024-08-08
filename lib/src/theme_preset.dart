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
    return const WxDrivenChipStyle()
        .merge(super.style)
        .copyWith(direction: Axis.horizontal);
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

  @override
  get style => super.style.copyWith(
        minHeight: 32.0,
        adaptiveSpacing: false,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        checkmarkWeight: 2,
        iconSize: 18.0,
        spacing: 8,
      );
}

class WxChipThemeM3 extends WxChipThemePreset {
  WxChipThemeM3(
    super.context, {
    super.curve,
    super.duration,
  });

  @override
  get baseTheme => WxSheetThemeToggleM3(context);

  @override
  get style => super.style.copyWith(
        minHeight: 32.0,
        adaptiveSpacing: false,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        checkmarkWeight: 2,
        iconSize: 18.0,
        spacing: 8,
      );
}

class WxChipThemeIOS extends WxChipThemePreset {
  WxChipThemeIOS(
    super.context, {
    super.curve,
    super.duration,
  });

  @override
  get baseTheme => WxSheetThemeToggleIOS(context);

  @override
  get style => super.style.copyWith(
        minHeight: 32.0,
        adaptiveSpacing: false,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        checkmarkWeight: 2,
        iconSize: 18.0,
        spacing: 8,
      );
}
