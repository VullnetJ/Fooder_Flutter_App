import 'package:flutter/material.dart';
import 'fooder_theme.dart';

class Card3 extends StatelessWidget {
  const Card3({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350, 
          height: 400, 
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/img4.jpeg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),         
        ),
        // Stacks overlay images in top of each other. 
        child: Stack(
          children: [
            // todo 5 add dark overlay boxdecoration
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: const BorderRadius.all(Radius.circular(10),),
              ),
            ),
            // todo 6 add container, column, incon and text
            Container(
              //3 
              padding: const EdgeInsets.all(15),
              //4
              child: Column(
                //5
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //6
                  const Icon(Icons.book,
                    color: Colors.orange,
                    size: 40,
                  ),
                  //7
                  const SizedBox(height: 10),
                  //8
                Text('Recipe Trends',
                  style: FooderTheme.darkTextTheme.headline2,
                ),
                const SizedBox(height: 28,)
                ],
              ),
            ),

            // todo 7 add center widget with chip widget children
            Center(
              //11
              child: Wrap(
                alignment: WrapAlignment.start,
                //13
                spacing: 14,
                children: [
                  Chip(
                    label: Text(
                      'Healthy',
                      style: FooderTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      // ignore: avoid_print
                      print('delete');
                    },
                  ),
                  Chip(
                    label: Text('Vegan',
                      style: FooderTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.7),
                  ),
                  Chip(
                    label: Text(
                      'Carrots',
                      style: FooderTheme.darkTextTheme.bodyText1,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                  ),

                ],
              ),
              
            )
          ],
        ),
      ),
    );
  }
}