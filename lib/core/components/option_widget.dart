// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'option_button.dart';

class OptionWidget extends StatefulWidget {
  final List<String> optionText;
  const OptionWidget({
    Key? key,
    required this.optionText,
  }) : super(key: key);

  @override
  State<OptionWidget> createState() => _OptionWidgetState();
}

class _OptionWidgetState extends State<OptionWidget> {
  int index = -1;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: widget.optionText.map((text) {
        return InkWell(
          onTap: () {
            setState(() {
              index = widget.optionText.indexOf(text);
            });
          },
          child: OptionButton(
            text: text,
            optionText:
                String.fromCharCode(65 + widget.optionText.indexOf(text)),
            isSelected: index == widget.optionText.indexOf(text),
          ),
        );
      }).toList(),
    );
  }
}
