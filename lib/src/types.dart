import 'package:wx_sheet/wx_sheet.dart';

/// A class representing the different variants in a Chip can have.
class WxChipVariant extends WxSheetVariant {
  /// Creates a new instance of `WxChipVariant` with the provided value.
  const WxChipVariant(super.value);

  /// A constant variant representing textual content.
  static const text = WxChipVariant('text');

  /// A constant variant representing tonal variations.
  static const tonal = WxChipVariant('tonal');

  /// A constant variant representing elevated content.
  static const elevated = WxChipVariant('elevated');

  /// A constant variant representing filled content.
  static const filled = WxChipVariant('filled');

  /// A constant variant representing outlined content.
  static const outlined = WxChipVariant('outlined');
}

/// Represents the different sizes available
/// for a Chip in the widgetarian platform.
class WxChipSize extends WxSheetSize {
  /// Creates a new `WxChipSize` instance.
  const WxChipSize(super.value);

  /// Represents the tiny Chip size.
  static const tiny = WxChipSize('tiny');

  /// Represents the small Chip size.
  static const small = WxChipSize('small');

  /// Represents the medium Chip size.
  static const medium = WxChipSize('medium');

  /// Represents the large Chip size.
  static const large = WxChipSize('large');

  /// Represents the huge Chip size.
  static const huge = WxChipSize('huge');
}
