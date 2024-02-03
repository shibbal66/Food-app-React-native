import 'package:flutter/material.dart';
class StartedPage extends StatelessWidget {
  const StartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/bg.PNG"),
            fit: BoxFit.fill,
          )
        ),
        child: Container(
          margin: EdgeInsets.only(top: 180),
          child: Center(
              child: ElevatedButton(
                style: ButtonStyle(
                  textStyle: MaterialStateProperty.all(TextStyle(fontSize: 18)),
                  fixedSize: MaterialStateProperty.all(Size(150, 40)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                      )
                    ),
                    backgroundColor: MaterialStateProperty.all(Colors.red)),
                  child: Text("Get started"),
                  onPressed: (){
                  Navigator.of(context).pushReplacementNamed("login");
                  })),
        ),
      ),

    );
  }
}
