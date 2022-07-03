import 'package:flutter/material.dart';
import 'package:go_to_moon_ui/reusable_widgets/custom_button.dart';

class HomePage extends StatelessWidget {
  late double _deviceHeight, deviceWidth;

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              // color: Colors.red,
              height: _deviceHeight,
              width: deviceWidth,
              padding: EdgeInsets.symmetric(horizontal: deviceWidth * 0.05),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _pageTitle(),
                  // _astroImageWidget(),
                  Column(
                    children: [
                      DropDownWidget(items: [
                        'Preneure Station',
                        "International Space Station",
                        "Mars Station",
                        "No Man's Land Station"
                      ], width: deviceWidth),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DropDownWidget(
                              items: ['1', '2', '3', '4', 'more than 4'],
                              width: deviceWidth * 0.42),
                          DropDownWidget(
                              items: ['Economy', 'Business','Luxury'],
                              width: deviceWidth * 0.43),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5, top: 18),
                        child: CustomButton(
                          width: deviceWidth,
                          color: Colors.white,
                          textColor: Colors.black,
                          onPressed: () {},
                          buttonName: 'Book Travel!',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: _astroImageWidget(),
            ),
          ],
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
      height: 439,
      width: 265,
      decoration: const BoxDecoration(
        image: DecorationImage(
          // fit: BoxFit.,
          image: AssetImage('assets/images/img.png'),
        ),
      ),
    );
  }

  Widget DropDownWidget({required List<String> items, required double width}) {
    List<String> _items = items;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: deviceWidth * 0.05),
      width: width,
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
}
