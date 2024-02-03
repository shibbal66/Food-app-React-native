import 'package:flutter/material.dart';
class CardRecItem extends StatelessWidget {
  const CardRecItem({Key? key, required this.size, required this.title, required this.image, required this.press}) : super(key: key);
  final Size size;
  final String title;
  final String image;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: [
          Container(
            width: size.width*0.35,
            height: size.height*0.17,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),

                image: DecorationImage(image: AssetImage(image),fit: BoxFit.fill)

            ),
          ),
          Container(
            width: size.width*0.35,
            height: 50,
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
              color: Colors.white.withOpacity(0.5),
              boxShadow: [BoxShadow(offset: Offset(0,10),blurRadius: 40,color: Colors.black)],
            ),
            child: Text(title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          )

        ],
      ),
    );




  }
}
