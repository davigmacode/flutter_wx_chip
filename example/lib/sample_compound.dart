import 'package:flutter/material.dart';
import 'package:wx_chip/wx_chip.dart';
import 'package:wx_avatar/wx_avatar.dart';
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
          source: 'sample_compound.dart',
          maxWidth: 400,
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
                variant: WxChipVariant.outlined,
                onPressed: () {},
                leading: const WxAvatar.circle(
                  image: NetworkImage('https://i.pravatar.cc/50?u=2'),
                  radius: 12,
                ),
                borderRadius: BorderRadius.circular(16),
                padding: const EdgeInsets.fromLTRB(4, 0, 8, 0),
                trailing: const Icon(Icons.close),
                selected: true,
                child: const Text('With Leading and Trailing'),
              ),
            ],
          ),
        );
      },
    );
  }
}
