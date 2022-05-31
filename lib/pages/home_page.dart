import 'package:flutter/material.dart';
import 'package:go_to_moon_ui/reusable_widgets/custom_button.dart';

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _pageTitle(),
              // _astroImageWidget(),
              DropDownWidget(items: ['ISS', 'Preneure Station']),
              DropDownWidget(items: ['1', '2', '3', '4']),
              DropDownWidget(items: ['Economy', 'Business', 'Luxury']),
              CustomButton(
                color: Colors.white,
                textColor: Colors.black,
                onPressed: () {},
                buttonName: 'Book Ride!',
              ),
            ],
          ),
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

  Widget DropDownWidget({required List<String> items}) {
    List<String> _items = items;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
      width: _deviceWidth,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(
          53,
          53,
          53,
          1.0,
        ),
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      child: DropdownButton(
        value: _items.first,
        onChanged: (_) {},
        items: _items.map(
          (e) {
            return DropdownMenuItem(
              child: Text(e),
              value: e,
            );
          },
        ).toList(),
        underline: Container(),
        dropdownColor: Colors.grey,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }

  // Widget bookButton() {
  //   return TextButton(
  //     style: ButtonStyle(
  //       backgroundColor: MaterialStateProperty.all(Colors.white),
  //     ),
  //     onPressed: () {},
  //     child: const Text('Book Ride!', style: TextStyle(
  //       color: Colors.black
  //     ),),
  //   );
  // }
}
