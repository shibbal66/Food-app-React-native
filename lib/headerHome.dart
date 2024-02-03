import 'package:flutter/material.dart';
class HeaderHome extends StatelessWidget {
  const HeaderHome({
    Key? key,
    required this.size,
  }) : super(key: key);
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height*0.2,
      child: Stack(
        children: [
          Container(
            height: size.height*0.2-27,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(40),
                    bottomLeft:  Radius.circular(40)
                )
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow:[BoxShadow(
                      offset: Offset(0,10),
                      blurRadius: 50,

                    )]
                ),
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search",
                      suffixIcon: Icon(Icons.search,color: Colors.red,),
                      hintStyle: TextStyle(
                          color: Colors.red.withOpacity(0.5)
                      ),
                      enabledBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none
                  ),

                ),
              ))
        ],
      ),

    );
  }
}
