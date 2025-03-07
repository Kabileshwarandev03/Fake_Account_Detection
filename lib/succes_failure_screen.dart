import 'package:demo/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CheckSuccessRFailure extends StatefulWidget {
  const CheckSuccessRFailure({super.key, required this.succes});

  final bool succes;

  @override
  State<CheckSuccessRFailure> createState() => _CheckSuccessRFailureState();
}

class _CheckSuccessRFailureState extends State<CheckSuccessRFailure> {
  @override
  void initState() {
    print("check condition is ${widget.succes}");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Constant.primaryColor,
        title: Text(
          "Fake Account Detection",
          style: TextStyle(
            color: Colors.white,
            fontFamily: Constant.fontName,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.chevron_left,
            size: 28,
          ),
          color: Colors.white,
        ),
      ),
      body: Column(
        children: [
          if (widget.succes)
            Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(
                    "lib/assets/image/svg/success.svg",
                    fit: BoxFit.cover,
                    height: 400,
                    // width: MediaQuery.sizeOf(context).width * 0.5,
                  ),
                ),
                Text(
                  "Login Successfully..!!",
                  style: TextStyle(
                    fontSize: 23,
                    color: Colors.green,
                    fontFamily: Constant.fontName,
                  ),
                ),
              ],
            ),
          if (!widget.succes)
            Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(
                    "lib/assets/image/svg/fakeaccount.svg",
                    fit: BoxFit.cover,
                    height: 400,
                    // width: MediaQuery.sizeOf(context).width * 0.5,
                  ),
                ),
                Text(
                  "Your Account is Fake..!!",
                  style: TextStyle(
                    fontSize: 23,
                    color: Colors.red,
                    fontFamily: Constant.fontName,
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
