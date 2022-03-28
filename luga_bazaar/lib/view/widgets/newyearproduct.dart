import 'package:flutter/material.dart';

class NewyearProductWidget extends StatelessWidget {
  final String image;
  final String title;
  final String price;
  const NewyearProductWidget({
    required this.image,
    required this.title,
    required this.price,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: 150,
      child: Column(
        children: [
          Expanded(
            child: Image.network(image),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headline6,
          ),
          Text(price),
        ],
      ),
    );
  }
}
