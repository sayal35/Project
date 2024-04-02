import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  bool? isChecked=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.3),
      body: Center(
        child: Container(
          width:kIsWeb? MediaQuery.of(context).size.width / 1.3:MediaQuery.of(context).size.width ,
          height:kIsWeb? MediaQuery.of(context).size.height / 1.3:MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return Wrap(
                children: [
                  FractionallySizedBox(
                    widthFactor: kIsWeb ? 0.5:1,
                    child: Container(
                      height: constraints.maxHeight,
                      width: constraints.maxWidth,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent.withOpacity(0.2),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20, left: 10),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              kIsWeb
                                  ? SizedBox.shrink()
                                  : SizedBox(
                                height: 30,
                              ),
                              Text(
                                'Login',
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 15,
                                    color: Colors.blueGrey),
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              RichText(
                                text: TextSpan(
                                  text: 'Doesn\'t have an account yet? ',
                                  style: TextStyle(
                                    fontSize: 8,
                                    color: Colors.grey,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'SIGN UP',
                                      style: TextStyle(
                                        color: Colors.pink.withOpacity(0.5),
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Text(
                                'Email Address',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.only(right: 40, top: 5),
                                child: TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'you@example.com',
                                    hintStyle: TextStyle(fontSize: 15),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Wrap(
                                children: [
                                  FractionallySizedBox(
                                    widthFactor: 0.3,
                                    child: Text(
                                      'Password',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  FractionallySizedBox(
                                    widthFactor: 0.4,
                                  ),
                                  FractionallySizedBox(
                                    widthFactor: 0.3,
                                    child: Text(
                                      'Forget Password?',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 12,
                                        decoration: TextDecoration.underline,
                                        color: Colors.pink.withOpacity(0.8),
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.only(right: 40, top: 5),
                                child: TextFormField(
                                  keyboardType: TextInputType.visiblePassword,
                                  obscureText: true,
                                  obscuringCharacter: '*',
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'password',
                                    hintStyle:TextStyle(fontSize: 15),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Checkbox(
                                value: isChecked,
                                activeColor: Colors.blueAccent,
                                tristate: true,
                                onChanged: (newBool){
                                  setState((){
                                    isChecked=newBool;
                                  });
                                },
                              ),
                              SizedBox(
                                width: constraints.maxWidth,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: ElevatedButton(
                                    style:ElevatedButton.styleFrom(elevation: 6,backgroundColor: Colors.green),
                                    onPressed: ()=>{
                                      //Navigator.pushNamed(context, RouteConstants.dashRoute),
                                    },
                                    child: Text('Login'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  kIsWeb ?
                  FractionallySizedBox(
                    widthFactor: 0.5,
                    child: Container(
                      padding: EdgeInsets.all(30),
                      decoration: BoxDecoration(
                        color: Colors.blueAccent.withOpacity(0.4),
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                      ),
                      height: constraints.maxHeight,
                      width: constraints.maxWidth,
                      child: Center(
                        child: SvgPicture.network('assets/images/Leftside.svg'),
                      ),
                    ),
                  )
                      :SizedBox.shrink(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}