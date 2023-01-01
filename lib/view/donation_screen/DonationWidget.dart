import 'package:flutter/material.dart';

import 'package:storage_management_system/constants/project_colors.dart';
import 'package:storage_management_system/constants/project_measures.dart';

import '../../model/model/category.dart';

const List<String> areas = <String>[
  'Nasr City',
  'Maadi',
  '6 October',
  'Giza',
  'Haram'
];

class DonationWidget extends StatefulWidget {
  final Function(bool) onChanged;
  final Category category;

  const DonationWidget(
      {Key? key, required this.onChanged, required this.category})
      : super(key: key);

  @override
  State<DonationWidget> createState() => _DonationWidgetState();
}

class _DonationWidgetState extends State<DonationWidget> {
  @override
  int numOfDonatedItems = 0;

  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(width: medium_padding * 2),
          const Text('Donation category: '),
          Material(
            elevation: small_padding / 5,
            shadowColor: mainBlue,
            shape: const CircleBorder(),
            child: TextButton(
              style: const ButtonStyle(),
              onPressed: () {
                setState(() {
                  if (numOfDonatedItems > 0) {
                    numOfDonatedItems--;
                    widget.onChanged(false);
                  }
                });
              },
              child: const Text(
                '-',
                style:
                    TextStyle(color: Colors.black, fontSize: medium_font_size),
              ),
            ),
          ),
          Text(
            '${widget.category.name} : $numOfDonatedItems ',
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: mainBlue,
                fontSize: small_font_size * 1.7,
                fontWeight: FontWeight.w700,
                fontFamily: 'IBM'),
          ),
          Material(
            elevation: small_padding / 5,
            shadowColor: mainBlue,
            shape: const CircleBorder(),
            child: TextButton(
              style: const ButtonStyle(),
              onPressed: () {
                if (widget.category.totalRoom > widget.category.busyRoom) {
                  setState(() {
                    numOfDonatedItems++;
                    print(numOfDonatedItems);
                    widget.onChanged(true);
                  });
                }
              },
              child: const Text(
                '+',
                style:
                    TextStyle(color: Colors.black, fontSize: medium_font_size),
              ),
            ),
          ),
        ],
      );
}
