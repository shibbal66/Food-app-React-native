import 'package:flutter/material.dart';
class CardTodaySp extends StatelessWidget {
  const CardTodaySp({Key? key, required this.size, required this.image, required this.foodName}) : super(key: key);
  final Size size;
  final String image;
  final String foodName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(top: 20,right: 10,left: 20,bottom: 30),
          width: size.width*0.5,
          height: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(image: AssetImage(image),fit: BoxFit.fill),
            boxShadow: [BoxShadow(offset: Offset(0,10),blurRadius: 40,color: Colors.black)],
          ),
        ),
        Column(
          children: [
            Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Text(foodName,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: ElevatedButton(
                onPressed: (){},
                child: Text("See details",),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    textStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
