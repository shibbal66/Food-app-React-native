import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:pfa2/numberStepper.dart';
class TryStep extends StatefulWidget {
  const TryStep({Key? key}) : super(key: key);

  @override
  State<TryStep> createState() => _TryStepState();
}

class _TryStepState extends State<TryStep> {
  int stp=0;
  int npres=1;
  List<String> images=["images/f1.jpeg","images/f2.jpeg","images/f4.jpeg","images/f5.jpeg"];
  List<String> descs=["desc1","desc2","desc3","desc4"];
  @override
  Widget build(BuildContext context) {

    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height,
            width: size.width,
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/bc7.jpg"),fit: BoxFit.fill)),
          ),
          Container(
            height: size.height*0.87,
            margin: EdgeInsets.only(left: size.width*0.3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30)),
                image: DecorationImage(image: AssetImage(images[stp]),fit: BoxFit.fill,opacity: 0.8),
              boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.7),offset: Offset(-10,20),blurRadius: 60)]
            ),

          ),

          Positioned(
            right: 0,
            top: size.height*0.3,
            child: Container(
              width: size.width*0.7,
              height: size.height*0.5,
              padding: EdgeInsets.all(10),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    (npres==1)?
                    Text("for ${npres}  preson",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),):
                    Text("for ${npres}  presons",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)
                    ,
                    SizedBox(height: 50,),
                    Text("Description :",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white),),
                    SizedBox(height: 10,),
                    Text("Step N ${stp+1}",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
                    SizedBox(height: 10,),
                    Text(descs[stp],style: TextStyle(fontSize: 25,color: Colors.white),),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: size.width*0.3,
              height: size.height*0.93,
              padding: EdgeInsets.only(top: 70,left: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                        GestureDetector(
                          onTap: (){
                            showAwsDialog("dt", "description", "images/d1.png", Container());

                          },
                          child: Column(
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                margin: EdgeInsets.symmetric(vertical: 20),
                                decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/d1.png"),fit: BoxFit.fill)),
                              ),
                              Text("Items",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)
                            ],
                          ),
                        ),
                    GestureDetector(
                      onTap: (){
                        showAwsDialog("dt", "description", "images/d2.png", Container());
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            margin: EdgeInsets.symmetric(vertical: 20),
                            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/d2.png"),fit: BoxFit.fill)),
                          ),
                          Text("Time",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        showAwsDialog("items","desc","images/d3.png",NumberStepper(initialValue: npres, onChanged: (value){
                          setState(() {
                            npres=value;
                          });
                        }));
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            margin: EdgeInsets.symmetric(vertical: 20),
                            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/d3.png"),fit: BoxFit.fill)),
                          ),
                          Text("N persons",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17),)
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        showAwsDialog("dt", "description", "images/d4.png", Container());
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            margin: EdgeInsets.symmetric(vertical: 20),
                            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/d4.png"),fit: BoxFit.fill)),
                          ),
                          Text("Budget",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
              child:Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    (stp>0)?
                    ElevatedButton(
                      onPressed: (){
                        if(stp!=0){
                          setState(() {
                            stp--;
                          });
                        }
                      },
                      child: Text("<  Previous",),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(140, 40),
                          backgroundColor: Colors.red,
                          textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                      ),
                    ):Container(),
                    (stp<images.length-1)?
                    ElevatedButton(
                      onPressed: (){
                            if(stp<images.length-1){
                              setState(() {
                                stp++;
                              });
                            }
                      },
                      child: Text("Next  >",),
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(140, 40),
                          backgroundColor: Colors.red,
                          textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                      ),
                    ):
                        Container(),
                  ],
                ),
              )
          ),
          Positioned(
            top: 20,
            left: 10,
            child: IconButton(
                onPressed: (){Navigator.of(context).pop();},
                icon: Icon(Icons.arrow_back_ios_sharp,color: Colors.red,size: 50,)),
          ),
        ],
      ),
    );
  }
void showAwsDialog(String dialogTitle,String dialogdescription,String image,Widget sbody){
  AwesomeDialog(
      context: context,
      dialogType: DialogType.noHeader,
      customHeader: CircleAvatar(foregroundImage: AssetImage(image),backgroundColor: Colors.white,radius: 50),
      animType: AnimType.rightSlide,
      title: dialogTitle,
      desc: dialogdescription,
      body: sbody,btnCancel: Container(),
      btnOkColor: Colors.red,
      btnOkOnPress: () {},
      )..show();

  }
}

