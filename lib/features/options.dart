import 'package:flutter/material.dart';

class Options extends StatefulWidget {
  final String option;
  final ValueChanged<String> onSelected;
  final bool isSelected;

  const Options({super.key, required this.option, required this.onSelected, required this.isSelected});

  @override
  // ignore: library_private_types_in_public_api
  _OptionsState createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => widget.onSelected(widget.option),
      child: Container(
        height: 48,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            width: 3,
            color: widget.isSelected ? Colors.green : const Color(0xffA42FC1),
          ),
          color: widget.isSelected ? Colors.green.withOpacity(0.2) : Colors.white,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    widget.option,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: widget.isSelected ? Colors.green : Colors.black,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Radio<String>(
                  value: widget.option,
                  groupValue: widget.isSelected ? widget.option : null,
                  onChanged: (value) => widget.onSelected(value!),
                  activeColor: Colors.green,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
