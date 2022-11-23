import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDropDownWidgets extends StatefulWidget {
  const CustomDropDownWidgets({Key? key}) : super(key: key);

  @override
  State<CustomDropDownWidgets> createState() => _CustomDropDownWidgetsState();
}

class _CustomDropDownWidgetsState extends State<CustomDropDownWidgets> {
  bool isOpen = false;
  String selectOption = 'SelectOption';
  List<String> politicsList = [
    'UAE',
    'USA',
    'UK',
    'ERP',
    'QATAR',
    'PAK',
    'MALAYSIA'
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
              // height: 30,
              ),
          InkWell(
            onTap: () {
              isOpen = !isOpen;
              setState(() {});
            },
            child: Container(
              width: double.infinity,
              height: 40,
              color: CupertinoColors.activeGreen,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Select Country",
                      style: TextStyle(
                        fontSize: 15,
                        color: CupertinoColors.white,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: CupertinoColors.white,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ),
          ),
          if (isOpen)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                primary: true,
                shrinkWrap: true,
                children: politicsList
                    .map((e) => Container(
                          decoration: BoxDecoration(
                              color: selectOption == e
                                  ? Colors.pink
                                  : Colors.grey.shade600),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                                onTap: () {
                                  selectOption = e;
                                  isOpen = false;
                                  setState(() {
                                    e;
                                  });
                                },
                                child: Text(
                                  e,
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: CupertinoColors.white),
                                )),
                          ),
                        ))
                    .toList(),
              ),
            ),
        ],
      ),
    );
  }
}
