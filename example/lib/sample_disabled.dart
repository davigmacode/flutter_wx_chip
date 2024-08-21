import 'package:flutter/material.dart';
import 'package:wx_chip/wx_chip.dart';
import 'package:choice/choice.dart';
import 'wrapper.dart';

class SampleDisabled extends StatelessWidget {
  const SampleDisabled({super.key});

  @override
  Widget build(BuildContext context) {
    return Choice(
      multiple: true,
      clearable: true,
      builder: (choice, _) {
        return Wrapper(
          title: 'Disabled',
          source: 'sample_disabled.dart',
          maxWidth: 400,
          child: Center(
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                WxChip(
                  disabled: true,
                  variant: WxChipVariant.tonal,
                  selected: choice.selected('dis-tonal'),
                  onSelected: (val) => choice.select('dis-tonal', val),
                  child: const Text('Tonal'),
                ),
                WxChip(
                  disabled: true,
                  variant: WxChipVariant.elevated,
                  selected: choice.selected('dis-elevated'),
                  onSelected: (val) => choice.select('dis-elevated', val),
                  child: const Text('Elevated'),
                ),
                WxChip(
                  disabled: true,
                  variant: WxChipVariant.filled,
                  selected: choice.selected('dis-filled'),
                  onSelected: (val) => choice.select('dis-filled', val),
                  child: const Text('Filled'),
                ),
                WxChip(
                  disabled: true,
                  variant: WxChipVariant.outlined,
                  selected: choice.selected('dis-outlined'),
                  onSelected: (val) => choice.select('dis-outlined', val),
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
