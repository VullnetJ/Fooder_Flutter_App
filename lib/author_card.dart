import 'package:flutter/material.dart';
import 'fooder_theme.dart';
import 'circle_image.dart';

class Author extends StatefulWidget {
  //1
  final String authorName;
  final String title;
  final ImageProvider? imageProvider;

  const Author({
    Key? key,
    required this.authorName,
    required this.title,
    this.imageProvider,
  }) : super(key: key);

  @override
  State<Author> createState() => _AuthorState();
}

class _AuthorState extends State<Author> {
  bool _isFavorited = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Row(
        //todo 3 add aligment
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //1
          Row(
            children: [
              CircleImage(
                imageProvider: widget.imageProvider,
                imageRadius: 30,
              ),
              // 2
              const SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.authorName,
                    style: FooderTheme.lightTextTheme.headline2,
                  ),
                  Text(
                    widget.title,
                    style: FooderTheme.lightTextTheme.headline3,
                  )
                ],
              ),
            ],
          ),
          // to do add iconButton
          IconButton(
            // 4
            icon: Icon(
              _isFavorited? Icons.favorite : Icons.favorite_border,
            ),
            color: Colors.orange,
            iconSize: 38,
            onPressed: () {
              setState(() {
                _isFavorited = !_isFavorited;
                const snackBar = SnackBar(content: Text('Favorite Pressed'));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              });
            },
          ),
        ],
      ),
    );
  }
}
