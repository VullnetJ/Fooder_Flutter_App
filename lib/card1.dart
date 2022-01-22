import 'package:flutter/material.dart';
import 'fooder_theme.dart';

class Card1 extends StatelessWidget {
  const Card1({ Key? key }) : super(key: key);
  //1
  final String catergory = 'Editor\'s choice';
  final String title = 'The Art of Dough';
  final String description = 'Learn to make the perfect bread. ';
  final String chef = 'Ray Smith';
  // 2
  @override
  Widget build(BuildContext context) {
    //3
    return Center(
      // todos card1 decorate container. 
      child: Container(
        //todo add a stack of text
        child: Stack(
          children: [
            Text(
              catergory,
              style: FooderTheme.darkTextTheme.bodyText1,
            ),
            //9
            Positioned(child: 
              Text(
                title,
                style: FooderTheme.darkTextTheme.headline1,
              ),
              top: 20,
            ),
            //10
            Positioned(
              child: Text(
                description,
                style: FooderTheme.darkTextTheme.headline3,
              ),
              bottom: 30,
              right: 0,
            ),
            Positioned(
              child: Text(
                chef,
                style: FooderTheme.darkTextTheme.headline3,
              ),
              bottom: 10,
              right: 5,
            ),
          ],
        ),
        //1 
        padding: const EdgeInsets.all(15),
        //2
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 400,
        ),
        decoration: const BoxDecoration(
          //4 
          image: DecorationImage(
            image: AssetImage('images/img1.jpeg'),
            //6
            fit: BoxFit.cover,
          ),
          
          //7
          borderRadius: BorderRadius.all(Radius.circular(10))
        
        ),
      ),
    );
  }
}