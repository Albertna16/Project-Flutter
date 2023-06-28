import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Discount extends StatefulWidget {
  const Discount({Key? key}) : super(key: key);
  _DiscountState createState() => _DiscountState();
}

class _DiscountState extends State<Discount> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  final List<Widget> data = [
    ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Image.network(
        "https://i.pinimg.com/236x/e6/8d/a6/e68da60bd7883fc769d83f60fea34d1e.jpg",
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Image.network(
        "https://i.pinimg.com/564x/43/0b/d4/430bd4904c02f0e57ed98404626825a2.jpg",
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Image.network(
        "https://i.pinimg.com/236x/ad/3b/cf/ad3bcf22d60ad88580b03831ea93c0cb.jpg",
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Image.network(
        "https://i.pinimg.com/236x/04/e0/04/04e004a4dabbd122f207df3b4bdfc1fe.jpg",
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CarouselSlider(
          items: data,
          carouselController: _controller,
          options: CarouselOptions(
            height: 110,
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 2.2,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: data.asMap().entries.map(
            (entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: 30.0,
                  height: 5.0,
                  margin: const EdgeInsets.symmetric(vertical: 7.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      shape: BoxShape.rectangle,
                      color: (Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black)
                          .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                ),
              );
            },
          ).toList(),
        ),
      ],
    );
  }
}
