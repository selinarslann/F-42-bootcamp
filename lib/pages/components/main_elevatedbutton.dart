import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainElevatedButton extends StatelessWidget {
  const MainElevatedButton({super.key, this.onPressed, required this.text});

  final void Function()? onPressed;

  final String text;

  @override
  Widget build(BuildContext context) {
    double mHeight = MediaQuery.of(context).size.height;
    double mWidth = MediaQuery.of(context).size.width;

    return OutlinedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all<Color>(const Color(0xffF7F7F5)),
        overlayColor: MaterialStateProperty.all<Color>(const Color(0xffC1D8C1)),
        fixedSize: MaterialStateProperty.all<Size>(
          Size(mWidth * 0.81, mHeight * 0.075),
        ),
        elevation: MaterialStateProperty.all<double>(0.0),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: const BorderSide(
                //! bu renk bozuk
                color: Color.fromARGB(255, 205, 47, 47),
                width: 0.4),
          ),
        ),
      ),
      child: Text(
        text,
        style: GoogleFonts.inter(
          color: const Color(0xff37352F),
          fontSize: mHeight * 0.023,
        ),
      ),
    );
  }
}
