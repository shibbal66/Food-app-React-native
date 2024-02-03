import 'package:flutter/material.dart';
class TitleWithBtn extends StatelessWidget {
  const TitleWithBtn({Key? key, required this.title, required this.press}) : super(key: key);
  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Container(
              height: 24,
              child:

              Text(title, style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)

          ),
          Spacer(),
          ElevatedButton(child: Text("more"), onPressed: press,
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                textStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
            ),)
        ],
      ),
    );
  }
}
