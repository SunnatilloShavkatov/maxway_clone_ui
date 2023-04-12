import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottiePage extends StatefulWidget {
  const LottiePage({Key? key}) : super(key: key);

  @override
  State<LottiePage> createState() => _LottiePageState();
}

class _LottiePageState extends State<LottiePage> {
  int radius = 100;
  Color color = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Center(
      //   child: Lottie.asset('assets/lottie/timer.json'),
      // )
      // body: Center(
      //   child: BouncingWidget(
      //     duration: Duration(milliseconds: 110),
      //     onPressed: () {},
      //     scaleFactor: 2,
      //     child: Icon(
      //       Icons.add,
      //       size: 240,
      //       color: Colors.black,
      //     ),
      //   ),
      // ),

      // body: Center(
      //   child: GestureDetector(
      //     onTap: () {
      //      setState(() {
      //        if(radius == 100){
      //          color = Colors.blue;
      //        }else{
      //           color = Colors.red;
      //        }
      //         radius = radius == 100 ? 200 : 100;
      //      });
      //     },
      //     child: AnimatedContainer(
      //       duration: const Duration(milliseconds: 300),
      //       width: 400,
      //       height: 400,
      //       decoration: BoxDecoration(
      //         color: color,
      //         borderRadius: BorderRadius.circular(radius.toDouble()),
      //       ),
      //     ),
      //   ),
      // )
      body: Stack(
        children: [
          Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  if (radius == 100) {
                    color = Colors.blue;
                  } else {
                    color = Colors.red;
                  }
                  radius = radius == 100 ? 200 : 100;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                width: 400,
                height: 400,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(radius.toDouble()),
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 3000),
            top: radius == 100 ? 50 : MediaQuery.of(context).size.height - 150,
            child: Lottie.asset(
              'assets/lottie/timer.json',
              width: 100,
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}
