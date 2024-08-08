import 'package:flutter/material.dart';
import 'package:wx_chip/wx_chip.dart';
import 'package:choice/choice.dart';
import 'wrapper.dart';
import 'severity_colors.dart';

class SampleSeverity extends StatelessWidget {
  const SampleSeverity({super.key});

  @override
  Widget build(BuildContext context) {
    return Choice(
      multiple: true,
      clearable: true,
      builder: (choice, _) {
        return Wrapper(
          title: 'Color Severity',
          maxWidth: 800,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  WxChip(
                    variant: WxChipVariant.tonal,
                    severity: dangerColor,
                    selected: choice.selected('tonal-danger'),
                    onSelected: (val) => choice.select('tonal-danger', val),
                    child: const Text('Tonal Danger'),
                  ),
                  WxChip(
                    variant: WxChipVariant.elevated,
                    severity: dangerColor,
                    selected: choice.selected('elevated-danger'),
                    onSelected: (val) => choice.select('elevated-danger', val),
                    child: const Text('Elevated Danger'),
                  ),
                  WxChip(
                    variant: WxChipVariant.filled,
                    severity: dangerColor,
                    selected: choice.selected('filled-danger'),
                    onSelected: (val) => choice.select('filled-danger', val),
                    child: const Text('Filled Danger'),
                  ),
                  WxChip(
                    variant: WxChipVariant.outlined,
                    severity: dangerColor,
                    selected: choice.selected('outlined-danger'),
                    onSelected: (val) => choice.select('outlined-danger', val),
                    child: const Text('Outlined Danger'),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  WxChip(
                    variant: WxChipVariant.tonal,
                    severity: warningColor,
                    selected: choice.selected('tonal-warning'),
                    onSelected: (val) => choice.select('tonal-warning', val),
                    child: const Text('Tonal Warning'),
                  ),
                  WxChip(
                    variant: WxChipVariant.elevated,
                    severity: warningColor,
                    selected: choice.selected('elevated-warning'),
                    onSelected: (val) => choice.select('elevated-warning', val),
                    child: const Text('Elevated Warning'),
                  ),
                  WxChip(
                    variant: WxChipVariant.filled,
                    severity: warningColor,
                    selected: choice.selected('filled-warning'),
                    onSelected: (val) => choice.select('filled-warning', val),
                    child: const Text('Filled Warning'),
                  ),
                  WxChip(
                    variant: WxChipVariant.outlined,
                    severity: warningColor,
                    selected: choice.selected('outlined-warning'),
                    onSelected: (val) => choice.select('outlined-warning', val),
                    child: const Text('Outlined Warning'),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  WxChip(
                    variant: WxChipVariant.tonal,
                    severity: successColor,
                    selected: choice.selected('tonal-success'),
                    onSelected: (val) => choice.select('tonal-success', val),
                    child: const Text('Tonal Success'),
                  ),
                  WxChip(
                    variant: WxChipVariant.elevated,
                    severity: successColor,
                    selected: choice.selected('elevated-success'),
                    onSelected: (val) => choice.select('elevated-success', val),
                    child: const Text('Elevated Success'),
                  ),
                  WxChip(
                    variant: WxChipVariant.filled,
                    severity: successColor,
                    selected: choice.selected('filled-success'),
                    onSelected: (val) => choice.select('filled-success', val),
                    child: const Text('Filled Success'),
                  ),
                  WxChip(
                    variant: WxChipVariant.outlined,
                    severity: successColor,
                    selected: choice.selected('outlined-success'),
                    onSelected: (val) => choice.select('outlined-success', val),
                    child: const Text('Outlined Success'),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  WxChip(
                    variant: WxChipVariant.tonal,
                    severity: infoColor,
                    selected: choice.selected('tonal-info'),
                    onSelected: (val) => choice.select('tonal-info', val),
                    child: const Text('Tonal Info'),
                  ),
                  WxChip(
                    variant: WxChipVariant.elevated,
                    severity: infoColor,
                    selected: choice.selected('elevated-info'),
                    onSelected: (val) => choice.select('elevated-info', val),
                    child: const Text('Elevated Info'),
                  ),
                  WxChip(
                    variant: WxChipVariant.filled,
                    severity: infoColor,
                    selected: choice.selected('filled-info'),
                    onSelected: (val) => choice.select('filled-info', val),
                    child: const Text('Filled Info'),
                  ),
                  WxChip(
                    variant: WxChipVariant.outlined,
                    severity: infoColor,
                    selected: choice.selected('outlined-info'),
                    onSelected: (val) => choice.select('outlined-info', val),
                    child: const Text('Outlined Info'),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
