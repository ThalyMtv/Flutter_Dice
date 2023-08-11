import 'package:flutter/material.dart';
import 'package:primeiro_app/diceroller.dart';



const startAlignment = Alignment.topLeft;
const  endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget{
  const GradientContainer (this.color1,  this.color2, {super.key, colors});

  const GradientContainer.purple({super.key}) :
      color1 = Colors.deepPurple, 
      color2 = Colors.indigo;

  final Color color1;
  final Color color2;
  

  @override
  Widget build(context) {
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color1, color2],                 
                begin: startAlignment,
                end: endAlignment,
            ),
          ),
          child: const Center(child: DiceRoller(),),
        );
  }
}


//1ª versão
//  @override
//  Widget build(context) {
//    return Container(
//          decoration: const BoxDecoration(
//            gradient: LinearGradient(
//              colors: [
//                Color.fromARGB(255, 26, 2, 80),
//                Color.fromARGB(255, 45, 7, 98),
//                ],                 
//                begin: startAlignment,
//                end: endAlignment,
//            ),
//          ),
//          child: const Center(
//            child: StyledText('Olá Mundo!')
//          )
//        );
//  }
//}




//class GradientContainer extends StatelessWidget{
//  const GradientContainer ({super.key, required this.colors});
//
//  final List<Color> colors;
//
//  @override
//  Widget build(context) {
//    return Container(
//          decoration: BoxDecoration(
//            gradient: LinearGradient(
//              colors: colors,                 
//                begin: startAlignment,
//                end: endAlignment,
//            ),
//          ),
//          child: const Center(
//            child: StyledText('Olá Mundo!')
//          )
//        );
//  }
//}