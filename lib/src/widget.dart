import 'package:flutter/widgets.dart';
import 'package:wx_sheet/wx_sheet.dart';
import 'package:animated_checkmark/animated_checkmark.dart';
import 'style_driven.dart';
import 'style.dart';
import 'theme.dart';
import 'theme_data.dart';

/// The sheet widget serves as the building block for many Widgetarian components,
/// providing a base layer for customization.
class WxChip extends WxSheet<WxChipThemeData> {
  /// Create a sheet widget
  const WxChip({
    super.key,
    super.animated,
    super.duration,
    super.curve,
    super.variant,
    super.size,
    super.severity,
    super.width,
    super.height,
    super.minWidth,
    super.maxWidth,
    super.minHeight,
    super.maxHeight,
    super.margin,
    super.padding,
    super.spacing,
    super.adaptiveSpacing,
    super.offset,
    super.scale,
    super.rotate,
    super.flipX,
    super.flipY,
    super.opacity,
    super.alignment,
    super.clipBehavior,
    super.overlay,
    super.overlayColor,
    super.overlayOpacity,
    super.elevationColor,
    super.elevation,
    super.tileAlign,
    super.tileJustify,
    super.tileWrap,
    super.textStyle,
    super.textAlign,
    super.textSpacing,
    super.textColor,
    super.textOverflow,
    super.textSoftWrap,
    super.textWidthBasis,
    super.foregroundColor,
    super.foregroundOpacity,
    super.foregroundAlpha,
    super.backgroundColor,
    super.backgroundOpacity,
    super.backgroundAlpha,
    super.borderColor,
    super.borderOpacity,
    super.borderAlpha,
    super.borderWidth,
    super.borderRadius,
    super.borderStyle,
    super.borderOffset,
    super.border,
    super.image,
    super.shadows,
    super.gradient,
    super.iconColor,
    super.iconOpacity,
    super.iconSize,
    super.focusedStyle,
    super.hoveredStyle,
    super.pressedStyle,
    super.loadingStyle,
    super.disabledStyle,
    super.selectedStyle,
    super.indeterminateStyle,
    super.style,
    super.tooltip,
    super.selected,
    super.indeterminate,
    super.disabled,
    super.loading,
    super.autofocus,
    super.focusNode,
    super.onPressed,
    super.onSelected,
    super.leading,
    super.trailing,
    super.child,
  });

  @override
  WxChipStyle get effectiveStyle =>
      const WxDrivenChipStyle().merge(super.effectiveStyle);

  @override
  WxChipThemeData getTheme(BuildContext context) {
    return WxChipTheme.of(context);
  }

  @override
  WxChipStyle? getInheritedStyle(BuildContext context, bool inherits) {
    if (inherits) {
      final parentStyle = getParentStyle(context);
      return const WxDrivenChipStyle().merge(parentStyle).merge(effectiveStyle);
    }
    return effectiveStyle;
  }

  @override
  WxSheetWrapper? get outerWrapper {
    return (state, child) {
      if (child != null) {
        final style = state.effectiveStyle;
        if (style is WxChipStyle) {
          child = CheckmarkTheme.merge(
            color: style.checkmarkColor ?? style.foregroundColor,
            size: style.checkmarkSize ?? style.iconSize,
            weight: style.checkmarkWeight,
            child: child,
          );
        }
      }
      return child;
    };
  }
}
