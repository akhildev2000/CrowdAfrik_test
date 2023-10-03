import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Texts are being used
class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    required this.text,
    required this.size,
    required this.weight,
    required this.color,
  });
  final String text;
  final double size;
  final FontWeight weight;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        color: color,
        fontSize: size,
        fontWeight: weight,
      ),
    );
  }
}

//buttons
class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.color,
    required this.size,
    required this.fontweigh,
    required this.fns,
  });
  final String text;
  final Color color;
  final double size;
  final FontWeight fontweigh;
  final Function fns;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: TextButton(
          onPressed: () {
            fns();
          },
          child: Text(
            text,
            style: GoogleFonts.poppins(
                color: color,
                fontSize: size,
                fontWeight: fontweigh,
                letterSpacing: 2),
          ),
        ),
      ),
    );
  }
}

//TextForm fields
class TextFormWidget extends StatelessWidget {
  const TextFormWidget({super.key, required this.hinttext});
  final String hinttext;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: TextFormField(
        decoration: InputDecoration(
          hintStyle: GoogleFonts.poppins(color: Colors.white),
          hintText: hinttext,
          fillColor: const Color.fromARGB(255, 194, 184, 184),
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
