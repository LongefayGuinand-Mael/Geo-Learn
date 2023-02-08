import 'package:flutter/material.dart';

class HomePageButton extends StatefulWidget {
  final String labelText;
  final Icon icon;
  final String route;
  const HomePageButton(
      {Key? key,
      required this.labelText,
      required this.icon,
      required this.route})
      : super(key: key);

  @override
  State<HomePageButton> createState() => _HomePageButtonState();
}

class _HomePageButtonState extends State<HomePageButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, widget.route);
      },
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.resolveWith(
          (states) => const Color(0xFF4B9589).withOpacity(0.1),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(
              color: Color(0xFF3A736A),
              width: 2,
            ),
          ),
        ),
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.70,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              widget.icon,
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Center(
                  child: Text(
                    widget.labelText,
                    style: const TextStyle(
                      color: Color(0xFF3A736A),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
