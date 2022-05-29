import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: _deviceHeight,
          width: _deviceWidth,
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
          child: _destinationDropDownWidget(),
        ),
      ),
    );
  }

  Widget _pageTitle() {
    return const Text(
      '#GoMoon',
      style: TextStyle(
        fontSize: 70,
        color: Colors.white,
        fontWeight: FontWeight.w800,
      ),
    );
  }

  Widget _astroImageWidget() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('assets/images/img.png'),
        ),
      ),
    );
  }

  Widget _destinationDropDownWidget() {
    List<DropdownMenuItem<String>> _items = [
      'James Webb Station',
      'Preneure Station'
    ].map((e) {
      return DropdownMenuItem(child: Text(e), value: e,);
    },).toList();
    return Container(
      child: DropdownButton(
        onChanged: (_) {},
        items: _items,
      ),
    );
  }
}
