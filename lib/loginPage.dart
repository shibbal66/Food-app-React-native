import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> _formstate=new GlobalKey<FormState>();
  send(){
    var formstat=_formstate.currentState;
    if(formstat!.validate()){
      print("valid");
    }
    else{
      print("not valid");
    }
  }
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height,
            width: size.width,
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/bc1.jpg"),fit: BoxFit.fill)),
          ),
          Container(
            height: size.height,
            width: size.width,
            color: Colors.black.withOpacity(0.3),
          ),
          ListView(
            padding: EdgeInsets.only(top: 0),
            children: [
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 350,
                    width: size.width,
                    decoration: BoxDecoration(
                        color: Colors.red.withOpacity(0.5),
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70),bottomRight: Radius.circular(70))
                    ),
                    child: Image.asset("images/c1.png"),
                  ),
                  Container(
                      padding: EdgeInsets.only(left: 35,bottom: 20,top: 50),
                      alignment: Alignment.topLeft,
                      child: Text("Welcome back !",style: TextStyle(
                          fontSize: 30,
                          color: Colors.red,
                          fontWeight: FontWeight.w800,
                          shadows: [Shadow(color: Colors.black.withOpacity(0.5),offset: Offset(2,2),blurRadius: 15)]
                      ),)
                  ),
                ],
              ),
              Form(
                key: _formstate,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        TextFormField(
                          validator: (val){
                            if(val!.isEmpty){
                              return "email cant be empty";
                            }
                            else if(val!.length<4){
                              return "email is too short";
                            }
                            else if(val!.length>45){
                              return "email is too long";
                            }
                            else{
                              return null;
                            }
                          },
                          style: TextStyle(color: Colors.white),
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.done,

                          decoration: InputDecoration(
                              hintText: "Your email",
                              hintStyle: TextStyle(color: Colors.white),
                              prefixIcon: Icon(Icons.email,color: Colors.red),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.black
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.red
                                ),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.red
                                ),
                              ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Colors.red
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 15,),
                        TextFormField(
                          validator: (val){
                            if(val!.isEmpty){
                              return "password cant be empty";
                            }
                            else if(val!.length<6){
                              return "password is too short";
                            }
                            else if(val!.length>20){
                              return "password is too long";
                            }
                            else{
                              return null;
                            }
                          },
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              hintText: "Your password",
                              hintStyle: TextStyle(color: Colors.white),
                              prefixIcon: Icon(Icons.lock, color: Colors.red,),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.black
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.red
                                ),
                              ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Colors.red
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Colors.red
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                      ],
                    ),
                  )
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(

                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                        fixedSize: Size(1000, 50),
                        textStyle: TextStyle(fontSize: 20)
                    ),
                    onPressed: (){
                      send();
                      /*Navigator.of(context).pushNamed("home");*/
                    }, child: Text("Login")),
              ),
              Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(15),
                  child:
                  InkWell(
                      child:
                      Text("Dont have account ? Join us",style: TextStyle(color: Colors.white),),onTap: (){
                    Navigator.of(context).pushNamed("signup");
                  }
                  )
              )
            ],
          )
        ],
      ),
    );
  }
}
