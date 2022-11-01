import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SeekBarData {
  final Duration position;
  final Duration duration;

  SeekBarData({
    required this.position,
    required this.duration,
  });
}

class SeekBar extends StatefulWidget {
  final Duration? position;
  final Duration? duration;
  final ValueChanged<Duration>? onChanged;
  final ValueChanged<Duration>? onChangedEnd;
  const SeekBar({
    super.key,
    this.position,
    this.duration,
    this.onChanged,
    this.onChangedEnd,
  });

  @override
  State<SeekBar> createState() => _SeekBarState();
}

class _SeekBarState extends State<SeekBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: SliderTheme(
            data: SliderTheme.of(context).copyWith(
              trackHeight: 4,
              thumbShape: const RoundSliderOverlayShape(
                overlayRadius: 10,
              ),
              activeTrackColor: Colors.white.withOpacity(0.2),
              inactiveTrackColor: Colors.white,
              thumbColor: Colors.white,
              overlayColor: Colors.white,
            ),
            child: Slider(
              value: 0,
              onChanged: (value) {},
            ),
          ),
        )
      ],
    );
  }
}
