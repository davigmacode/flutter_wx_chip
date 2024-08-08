import 'package:flutter/material.dart';
import 'package:wx_chip/wx_chip.dart';
import 'package:choice/choice.dart';
import 'wrapper.dart';

class SampleCompound extends StatelessWidget {
  const SampleCompound({super.key});

  @override
  Widget build(BuildContext context) {
    return Choice(
      multiple: true,
      clearable: true,
      builder: (choice, _) {
        return Wrapper(
          title: 'Composition',
          child: Column(
            children: [
              WxChip(
                variant: WxChipVariant.outlined,
                onPressed: () {},
                leading: const Icon(Icons.calendar_month),
                child: const Text('With Leading'),
              ),
              const SizedBox(height: 15),
              WxChip(
                variant: WxChipVariant.tonal,
                onPressed: () {},
                trailing: const Icon(Icons.close),
                child: const Text('With Trailing'),
              ),
              const SizedBox(height: 15),
              WxChip(
                variant: WxChipVariant.filled,
                onPressed: () {},
                leading: const Icon(Icons.calendar_month),
                trailing: const Icon(Icons.close),
                child: const Text('With Leading and Trailing'),
              ),
            ],
          ),
        );
      },
    );
  }
}
