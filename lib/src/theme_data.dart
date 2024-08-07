import 'package:wx_sheet/wx_sheet.dart';
import 'style.dart';

class WxChipThemeData extends WxSheetThemeData<WxChipThemeData> {
  /// Creates a theme data that can be used for [SheetTheme].
  const WxChipThemeData({
    super.curve,
    super.duration,
    WxChipStyle super.style = const WxChipStyle(),
    WxSheetStyleResolver<WxChipStyle>? super.styleResolver,
    super.overlay,
    super.feedback,
    super.focusable,
    super.disabled,
    super.inherits,
    super.mouseCursor,
  }) : super(animated: true);

  WxChipThemeData.from([
    super.other,
    super.fallback = const WxChipThemeData(),
  ]) : super.from();

  @override
  WxChipThemeData copyWith({
    animated,
    curve,
    duration,
    style,
    styleResolver,
    overlay,
    feedback,
    focusable,
    disabled,
    inherits,
    mouseCursor,
  }) {
    final ancestor = super.copyWith(
      animated: animated,
      curve: curve,
      duration: duration,
      style: style,
      styleResolver: styleResolver,
      overlay: overlay,
      feedback: feedback,
      focusable: focusable,
      disabled: disabled,
      inherits: inherits,
      mouseCursor: mouseCursor,
    );
    return WxChipThemeData.from(ancestor);
  }

  @override
  WxChipThemeData merge(other) {
    // if null return current object
    if (other == null) return this;

    final ancestor = super.merge(other);
    return WxChipThemeData.from(ancestor);
  }
}
