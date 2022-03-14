import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:xylophone/app_constants/colors/app_colors.dart';
import 'package:xylophone/widgets/custom_container.dart';

class XylophonePage extends StatefulWidget {
  const XylophonePage({Key key}) : super(key: key);

  @override
  _XylophonePageState createState() => _XylophonePageState();
}

class _XylophonePageState extends State<XylophonePage> {
  AudioCache player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Column(
            children: const [
              CustomContainer(color: AppColors.red, noteNumber: '1'),
              CustomContainer(color: AppColors.orange, noteNumber: '2'),
              CustomContainer(color: AppColors.yellow, noteNumber: '3'),
              CustomContainer(color: AppColors.green, noteNumber: '4'),
              CustomContainer(color: AppColors.teal, noteNumber: '5'),
              CustomContainer(color: AppColors.blue, noteNumber: '6'),
              CustomContainer(color: AppColors.purple, noteNumber: '7'),
            ],
          ),
        ),
      ),
    );
  }

  buildContainer({
    @required Color color,
    @required String notaNomeri,
    Color keleTurchuSplashColor = Colors.cyan,
  }) {
    return Expanded(
      child: Container(
        color: color,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: keleTurchuSplashColor,
            onTap: () {
              player.play('note$notaNomeri.wav');
            },
            child: Container(),
          ),
        ),
      ),
    );
  }
}
