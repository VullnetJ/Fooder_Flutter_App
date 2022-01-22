import 'package:flutter/material.dart';
import 'fooder_theme.dart';

import 'author_card.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Center(
      //1
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/img2.jpeg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        //2
        child: Column(
          children: [
            const Author(
              authorName: 'Will', 
              title: 'Super Cheff',
              imageProvider: AssetImage('images/img6.jpeg'),
            ),
              
            //todo 1 add author information
            // todo 4 add positoned text
            Expanded(
              //2
              child: Stack(
              children: [
                //3
                Positioned(
                  bottom: 14,
                  right: 14,
                  child: Text(
                    'Recipe',
                    style: FooderTheme.lightTextTheme.headline1,
                  ),
                ),
                //4
                Positioned(
                  bottom: 80,
                  left: 18,
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      'Soothies',
                      style: FooderTheme.lightTextTheme.headline1,),
                  ),
                  )
              ],
            ),
          ),
          ],
          
        ),
      ),
    );
  }
}
