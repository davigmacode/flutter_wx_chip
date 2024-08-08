import 'dart:ui';
import 'package:wx_sheet/wx_sheet.dart';

class WxChipStyle extends WxSheetStyle {
  /// The color of the checkmark.
  final Color? checkmarkColor;

  /// The size of the checkmark. If null, the checkmark expands to fit its parent.
  final double? checkmarkSize;

  /// The stroke width of the checkmark.
  final double? checkmarkWeight;

  /// Create a raw [WxChipStyle].
  const WxChipStyle({
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
    super.overlayColor,
    super.overlayOpacity,
    super.surfaceTint,
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
    super.titleStyle,
    super.subtitleStyle,
    super.titleSize,
    super.subtitleSize,
    super.titleColor,
    super.subtitleColor,
    super.titleMaxLines,
    super.subtitleMaxLines,
    super.titleWeight,
    super.subtitleWeight,
    this.checkmarkColor,
    this.checkmarkSize,
    this.checkmarkWeight,
  });

  /// Create a [WxChipStyle] from another [WxChipStyle] style
  WxChipStyle.from(WxChipStyle? super.other)
      : checkmarkColor = other?.checkmarkColor,
        checkmarkSize = other?.checkmarkSize,
        checkmarkWeight = other?.checkmarkWeight,
        super.from();

  /// Create a [WxChipStyle] from another [WxSheetStyle] style
  WxChipStyle.fromAncestor(
    super.other, {
    this.checkmarkColor,
    this.checkmarkSize,
    this.checkmarkWeight,
  }) : super.from();

  /// Creates a copy of this [WxChipStyle] but with
  /// the given fields replaced with the new values.
  @override
  WxChipStyle copyWith({
    direction,
    variant,
    size,
    severity,
    width,
    height,
    minWidth,
    maxWidth,
    minHeight,
    maxHeight,
    margin,
    padding,
    spacing,
    adaptiveSpacing,
    offset,
    scale,
    rotate,
    flipX,
    flipY,
    opacity,
    alignment,
    clipBehavior,
    overlayColor,
    overlayOpacity,
    surfaceTint,
    elevationColor,
    elevation,
    tileAlign,
    tileJustify,
    tileWrap,
    textStyle,
    textAlign,
    textSpacing,
    textColor,
    textOverflow,
    textSoftWrap,
    textWidthBasis,
    foregroundColor,
    foregroundOpacity,
    foregroundAlpha,
    backgroundColor,
    backgroundOpacity,
    backgroundAlpha,
    borderColor,
    borderOpacity,
    borderAlpha,
    borderWidth,
    borderRadius,
    borderStyle,
    borderOffset,
    border,
    image,
    shadows,
    gradient,
    iconColor,
    iconOpacity,
    iconSize,
    titleStyle,
    subtitleStyle,
    titleSize,
    subtitleSize,
    titleColor,
    subtitleColor,
    titleMaxLines,
    subtitleMaxLines,
    titleWeight,
    subtitleWeight,
    Color? checkmarkColor,
    double? checkmarkSize,
    double? checkmarkWeight,
  }) {
    final ancestor = super.copyWith(
      direction: direction,
      variant: variant,
      size: size,
      severity: severity,
      width: width,
      height: height,
      minWidth: minWidth,
      maxWidth: maxWidth,
      minHeight: minHeight,
      maxHeight: maxHeight,
      margin: margin,
      padding: padding,
      spacing: spacing,
      adaptiveSpacing: adaptiveSpacing,
      offset: offset,
      scale: scale,
      rotate: rotate,
      flipX: flipX,
      flipY: flipY,
      opacity: opacity,
      alignment: alignment,
      clipBehavior: clipBehavior,
      overlayColor: overlayColor,
      overlayOpacity: overlayOpacity,
      surfaceTint: surfaceTint,
      elevationColor: elevationColor,
      elevation: elevation,
      tileAlign: tileAlign,
      tileJustify: tileJustify,
      tileWrap: tileWrap,
      textStyle: textStyle,
      textAlign: textAlign,
      textSpacing: textSpacing,
      textColor: textColor,
      textOverflow: textOverflow,
      textSoftWrap: textSoftWrap,
      textWidthBasis: textWidthBasis,
      foregroundColor: foregroundColor,
      foregroundOpacity: foregroundOpacity,
      foregroundAlpha: foregroundAlpha,
      backgroundColor: backgroundColor,
      backgroundOpacity: backgroundOpacity,
      backgroundAlpha: backgroundAlpha,
      borderColor: borderColor,
      borderOpacity: borderOpacity,
      borderAlpha: borderAlpha,
      borderWidth: borderWidth,
      borderRadius: borderRadius,
      borderStyle: borderStyle,
      borderOffset: borderOffset,
      border: border,
      image: image,
      shadows: shadows,
      gradient: gradient,
      iconColor: iconColor,
      iconOpacity: iconOpacity,
      iconSize: iconSize,
      titleStyle: titleStyle,
      subtitleStyle: subtitleStyle,
      titleSize: titleSize,
      subtitleSize: subtitleSize,
      titleColor: titleColor,
      subtitleColor: subtitleColor,
      titleMaxLines: titleMaxLines,
      subtitleMaxLines: subtitleMaxLines,
      titleWeight: titleWeight,
      subtitleWeight: subtitleWeight,
    );
    return WxChipStyle.fromAncestor(
      ancestor,
      checkmarkColor: checkmarkColor ?? this.checkmarkColor,
      checkmarkSize: checkmarkSize ?? this.checkmarkSize,
      checkmarkWeight: checkmarkWeight ?? this.checkmarkWeight,
    );
  }

  @override
  WxChipStyle merge(other) {
    if (other == null) return this;
    final ancestor = super.merge(other);
    final result = WxChipStyle.fromAncestor(
      ancestor,
      checkmarkColor: checkmarkColor,
      checkmarkSize: checkmarkSize,
      checkmarkWeight: checkmarkWeight,
    );
    if (other is WxChipStyle) {
      return result.copyWith(
        checkmarkColor: other.checkmarkColor,
        checkmarkSize: other.checkmarkSize,
        checkmarkWeight: other.checkmarkWeight,
      );
    }
    return result;
  }

  /// Linearly interpolate between two [WxChipStyle] objects.
  static WxChipStyle? lerp(WxChipStyle? a, WxChipStyle? b, double t) {
    if (a == null && b == null) return null;
    final ancestor = WxSheetStyle.lerp(a, b, t);
    return WxChipStyle.fromAncestor(
      ancestor,
      checkmarkColor: Color.lerp(a?.checkmarkColor, b?.checkmarkColor, t),
      checkmarkSize: lerpDouble(a?.checkmarkSize, b?.checkmarkSize, t),
      checkmarkWeight: lerpDouble(a?.checkmarkWeight, b?.checkmarkWeight, t),
    );
  }

  @override
  toMap() {
    return super.toMap()
      ..addAll({
        'checkmarkColor': checkmarkColor,
        'checkmarkSize': checkmarkSize,
        'checkmarkWeight': checkmarkWeight,
      });
  }
}
