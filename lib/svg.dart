import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_svg/svg.dart';

class Svgimage extends StatefulWidget {
  const Svgimage({super.key});

  @override
  State<Svgimage> createState() => _SvgimageState();
}

class _SvgimageState extends State<Svgimage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        SvgPicture.asset("assets/svg_trial.svg"),
        SvgPicture.asset("assets/next_try.svg"),

      ],),
    );
  }
}

// assets/next_try.svg