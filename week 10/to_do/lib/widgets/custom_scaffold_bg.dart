import 'package:flutter/material.dart';


class CustomScaffoldBg extends StatelessWidget {
  const CustomScaffoldBg({super.key, this.body, this.appBar, this.floatingActionButton});
  final Widget? body;
  final PreferredSizeWidget? appBar;
  final Widget? floatingActionButton;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blue,
            Colors.white,
          ],
          stops: const [0.3, 0.3],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
        appBar: appBar,
        backgroundColor: Colors.transparent,
        body: body,
        floatingActionButton:floatingActionButton ,
      ),
    );
  }
}
