import 'package:flutter/material.dart';

class DidYouKnow extends StatefulWidget {
  final String didYouKnowText;
  const DidYouKnow({
    Key? key,
    required this.didYouKnowText,
  }) : super(key: key);

  @override
  State<DidYouKnow> createState() => _DidYouKnowState();
}

class _DidYouKnowState extends State<DidYouKnow> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Did you know it?",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        Container(
          height: 2,
        ),
        Divider(
          height: 1,
          color: Colors.black.withOpacity(0.5),
        ),
        Container(
          height: 5,
        ),
        IntrinsicHeight(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      "« ",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 5,
              ),
              Expanded(
                flex: 16,
                child: Text(
                  widget.didYouKnowText,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
              Container(
                width: 5,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      " »",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
