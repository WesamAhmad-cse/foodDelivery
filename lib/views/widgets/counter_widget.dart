import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () => {
            setState(() {
              if (counter > 1) {
                counter--;
              }
            }),
          },
          icon: const Icon(Icons.remove),
        ),
        const SizedBox(
          width: 8,
        ),
        Text(counter.toString(),
            style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(
          width: 8,
        ),
        InkWell(
          onTap: () => {
            setState(() {
              counter++;
            }),
          },
          child: const Icon(Icons.add),
        ),
      ],
    );
  }
}
