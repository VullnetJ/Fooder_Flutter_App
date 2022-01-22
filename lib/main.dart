import 'package:flutter/material.dart';
import 'fooder_theme.dart';
import 'home.dart';

void main() {
  runApp(const Fooder());
}

class Fooder extends StatelessWidget {
  const Fooder({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // todos create theme
    final theme = FooderTheme.dark();
    // todos apply home theme
    // 3 
    
    return MaterialApp(
      // todos add theme
      theme: theme,
      title: 'Fooder',
      //4
      home: const Home(),
      
      // Scaffold(
      //   // todo style the title
      //   appBar: AppBar(
      //     title: Text(
      //       'Fooder app',
      //       style: theme.textTheme.headline2,
      //     ),

      //   ),
      //   body: Center(
      //     child: Text(
      //       'Let\s get cooking ',
      //       style: theme.textTheme.headline1,
      //     ),
      //   ),
      // ),
    );
  }
}
