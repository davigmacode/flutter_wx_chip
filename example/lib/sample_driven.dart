import 'package:flutter/material.dart';
import 'package:wx_chip/wx_chip.dart';
import 'package:choice/choice.dart';
import 'wrapper.dart';

class SampleDriven extends StatelessWidget {
  const SampleDriven({super.key});

  @override
  Widget build(BuildContext context) {
    return Choice(
      multiple: true,
      clearable: true,
      builder: (choice, _) {
        return Wrapper(
          title: 'Checkmark',
          source: 'sample_driven.dart',
          maxWidth: 500,
          child: Center(
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                WxChip(
                  variant: WxChipVariant.tonal,
                  selected: choice.selected('tonal'),
                  onSelected: (val) => choice.select('tonal', val),
                  leadingCheckmark: true,
                  child: const Text('Tonal'),
                ),
                WxChip(
                  variant: WxChipVariant.elevated,
                  selected: choice.selected('elevated'),
                  onSelected: (val) => choice.select('elevated', val),
                  leading: const DrivenCheckmark(),
                  child: const Text('Elevated'),
                ),
                WxChip(
                  variant: WxChipVariant.filled,
                  selected: choice.selected('filled'),
                  onSelected: (val) => choice.select('filled', val),
                  trailing: const DrivenCheckmark(),
                  child: const Text('Filled'),
                ),
                WxChip(
                  severity: Colors.red,
                  variant: WxChipVariant.outlined,
                  selected: choice.selected('outlined'),
                  onSelected: (val) => choice.select('outlined', val),
                  trailingCheckmark: true,
                  child: const Text('Outlined'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
