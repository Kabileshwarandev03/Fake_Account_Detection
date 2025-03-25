import 'package:demo/constant.dart';
import 'package:demo/succes_failure_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fake Account Detection',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Constant.primaryColor),
        useMaterial3: true,
      ),
      home: const MyHomePage(
        title: 'Fake Account Detection',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController userNameTextEditingController =
      TextEditingController(text: "");
  TextEditingController userPwdTextEditingController =
      TextEditingController(text: "");
  bool showPassword = false;
  bool isVisibleMsg = false;

  bool signIn = false;
  List passwordList = ["12345678", "abcd1234", "demodemo"];
  List userlist = ["priya", "deepika", "raji"];

  @override
  void initState() {
    // userPwdTextEditingController.addListener(() {
    //   setState(() {
    //     isVisibleMsg = userPwdTextEditingController.text.isNotEmpty;
    //   });
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Constant.primaryColor,
        title: Text(
          widget.title,
          style: TextStyle(
            color: Colors.white,
            fontFamily: Constant.fontName,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  color: Colors.white,
                  height: 550,
                  width: MediaQuery.sizeOf(context).width * 0.5,
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        "lib/assets/image/svg/logo1.svg",
                        fit: BoxFit.cover,
                        height: 550,
                        // width: MediaQuery.sizeOf(context).width * 0.5,
                      ),
                    ],
                  ),
                ),
                Container(
                  // color: Colors.blue,
                  height: 520,
                  width: MediaQuery.sizeOf(context).width * 0.5,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                top: MediaQuery.sizeOf(context).height * 0.05),
                            height: MediaQuery.sizeOf(context).height * 0.6,
                            width: MediaQuery.sizeOf(context).width * 0.35,
                            decoration: const BoxDecoration(
                                // color: Color(0XFF8ECAFF),
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                            child: Column(
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 13, left: 5),
                                  child: Text(
                                    "Sign in",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontFamily: Constant.fontName,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 23.0,
                                      color: const Color(0XFF252525),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      top: MediaQuery.sizeOf(context).height *
                                          0.03),
                                  width:
                                      MediaQuery.sizeOf(context).height * 0.4,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      TextFormField(
                                        controller:
                                            userNameTextEditingController,
                                        showCursor: true,
                                        style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontFamily: Constant.fontName,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15.0,
                                          color: Color(0XFF252525),
                                        ),
                                        enableSuggestions: false,
                                        autocorrect: false,
                                        keyboardType:
                                            TextInputType.visiblePassword,
                                        decoration: InputDecoration(
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 10.0,
                                                  horizontal: 16.0),
                                          labelText: 'Username',
                                          labelStyle: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontFamily: Constant.fontName,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 12.0,
                                            color: Color(0XFF797979),
                                          ),
                                          enabledBorder:
                                              const OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                            borderSide: BorderSide(
                                                color: Color(0XFF797979),
                                                width: 1),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: const BorderSide(
                                                color: Color(0XFF797979),
                                                width: 1),
                                          ),
                                          focusedBorder:
                                              const OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                            borderSide: BorderSide(
                                                color: Color(0XFF797979),
                                                width: 1),
                                          ),
                                        ),
                                      ),
                                      userNameTextEditingController
                                                  .text.isEmpty &&
                                              signIn &&
                                              isVisibleMsg
                                          ? Container(
                                              margin: const EdgeInsets.only(
                                                  top: 5, left: 5),
                                              child: Text(
                                                "Please enter username",
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  decoration:
                                                      TextDecoration.none,
                                                  fontFamily: Constant.fontName,
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 12.0,
                                                  color: Colors.red,
                                                ),
                                              ),
                                            )
                                          : Container(),
                                      userNameTextEditingController
                                                  .text.isNotEmpty &&
                                              userNameTextEditingController
                                                      .text !=
                                                  "demo" "priya" "deepika" "raji"&&
                                              signIn &&
                                              isVisibleMsg
                                          ? Container(
                                              margin: const EdgeInsets.only(
                                                  top: 5, left: 5),
                                              child: Text(
                                                "Invalid Username",
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  decoration:
                                                      TextDecoration.none,
                                                  fontFamily: Constant.fontName,
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 12.0,
                                                  color: Colors.red,
                                                ),
                                              ),
                                            )
                                          : Container(),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      top: MediaQuery.sizeOf(context).height *
                                          0.05),
                                  width:
                                      MediaQuery.sizeOf(context).height * 0.4,
                                  child: Column(
                                    children: [
                                      TextFormField(
                                        controller:
                                            userPwdTextEditingController,
                                        obscureText:
                                            showPassword ? false : true,
                                        showCursor: true,
                                        style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontFamily: Constant.fontName,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15.0,
                                          color: Color(0XFF252525),
                                        ),
                                        enableSuggestions: false,
                                        autocorrect: false,
                                        keyboardType:
                                            TextInputType.visiblePassword,
                                        decoration: InputDecoration(
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 10.0,
                                                  horizontal: 16.0),
                                          labelText: 'Password',
                                          labelStyle: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontFamily: Constant.fontName,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 12.0,
                                            color: Color(0XFF797979),
                                          ),
                                          enabledBorder:
                                              const OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                            borderSide: BorderSide(
                                                color: Color(0XFF797979),
                                                width: 1),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: const BorderSide(
                                                color: Color(0XFF797979),
                                                width: 1),
                                          ),
                                          focusedBorder:
                                              const OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                            borderSide: BorderSide(
                                                color: Color(0XFF797979),
                                                width: 1),
                                          ),
                                        ),
                                        onFieldSubmitted: (value) {},
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      buildShowMyPass(),
                                    ],
                                  ),
                                ),
                                Visibility(
                                  visible: signIn && !isVisibleMsg,
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        .080,
                                    width: MediaQuery.of(context).size.width *
                                        0.18,
                                    margin: const EdgeInsets.only(
                                        top: 20, bottom: 10),
                                    child: TextButton(
                                        style: ButtonStyle(
                                          padding:
                                              MaterialStateProperty.resolveWith(
                                                  (states) =>
                                                      const EdgeInsets.only(
                                                          left: 7, right: 7)),
                                          backgroundColor:
                                              MaterialStateColor.resolveWith(
                                                  (states) =>
                                                      const Color(0xFFF2DEDE)),
                                          shape: MaterialStateProperty
                                              .resolveWith((states) =>
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              3))),
                                        ),
                                        child: Text(
                                          passwordList.contains(
                                                  userPwdTextEditingController
                                                      .text)
                                              ? 'Login Success.Redirecting....'
                                              : "Your Account is Fake",
                                          style: TextStyle(
                                              fontFamily: Constant.fontName,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14.0,
                                              color: const Color(0xFF6D7F64)),
                                        ),
                                        onPressed: () {
                                          // Navigator.of(context).push(MaterialPageRoute(
                                          //     builder: (context) => const DashBoardScreen()));
                                        }),
                                  ),
                                ),
                                // buildRememberMe(),
                                buildNextButton(),

                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 25, left: 5),
                                  child: Text(
                                    "Don't have an account?",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontFamily: Constant.fontName,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 17.0,
                                      color: const Color(0XFF797979),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 5, left: 5),
                                  child: Text(
                                    "Contact",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontFamily: Constant.fontName,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16.0,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildShowMyPass() {
    return Row(
      children: [
        SizedBox(
          height: 20.0,
          width: 20.0,
          child: Checkbox(
              side: BorderSide(color: Constant.primaryColor),
              checkColor: Color(0XFFFFFFFF),
              activeColor: Color(0XFF797979),
              value: showPassword,
              onChanged: (value) {
                setState(() {
                  showPassword = !showPassword;
                });
              }),
        ),
        Container(
          margin: const EdgeInsets.only(left: 10),
          child: Text(
            "Show my Password",
            style: TextStyle(
              decoration: TextDecoration.none,
              fontFamily: Constant.fontName,
              fontWeight: FontWeight.w500,
              fontSize: 13.0,
              color: const Color(0XFF252525),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildNextButton() {
    return Container(
      height: MediaQuery.of(context).size.height * .080,
      width: MediaQuery.of(context).size.width * 0.18,
      margin: const EdgeInsets.only(top: 20),
      child: TextButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.resolveWith(
                (states) => const EdgeInsets.only(left: 0, right: 0)),
            backgroundColor: MaterialStateColor.resolveWith(
                (states) => Constant.primaryColor),
            shape: MaterialStateProperty.resolveWith((states) =>
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
          ),
          child: Text(
            'Sign In',
            style: TextStyle(
                fontFamily: Constant.fontName,
                fontWeight: FontWeight.w500,
                fontSize: 16.0,
                color: Colors.white),
          ),
          onPressed: () {
            setState(() {
              if (userNameTextEditingController.text == "") {
                signIn = true;
                isVisibleMsg = true;
              } else if (userNameTextEditingController.text != "demo") {
                signIn = true;
                isVisibleMsg = true;
              } else if (userPwdTextEditingController.text == "") {
                signIn = true;
                isVisibleMsg = false;
              } else {
                signIn = true;
                isVisibleMsg = false;

                Future.delayed(const Duration(seconds: 2), () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => CheckSuccessRFailure(
                            succes: passwordList
                                    .contains(userPwdTextEditingController.text)
                                ? true
                                : false,
                          )));
                });
              }

              Future.delayed(const Duration(seconds: 2), () {
                setState(() {
                  signIn = false;
                });
              });
            });
            // Navigator.of(context).push(MaterialPageRoute(
            //       builder: (context) => CheckSuccessRFailure(
            //             succes: passwordList
            //                     .contains(userPwdTextEditingController.text)
            //                 ? true
            //                 : false,
            //           )));
          }),
    );
  }
}
