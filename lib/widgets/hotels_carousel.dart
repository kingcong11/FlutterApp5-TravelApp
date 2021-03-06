import 'package:flutter/material.dart';

/* Widgets */
import '../widgets/hotel_carousel_item.dart';


class HotelCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Exclusive Hotels',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0,
                ),
              ),
              GestureDetector(
                child: Text(
                  'See all',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.3,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                onTap: () {
                  print('See all');
                },
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            //maincarousel container
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return HotelCarouselItem(index);
              },
            ),
          ),
        ),
      ],
    );
  }
}
