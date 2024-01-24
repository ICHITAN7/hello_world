import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hello_world/data.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SlideView extends StatefulWidget {
  SlideView({Key? key}) : super(key: key);

  @override
  _SlideViewState createState() => _SlideViewState();
}

class _SlideViewState extends State<SlideView> {
  final PageController _pageController = PageController();
  final int _numPages = data.coverSlide.length; // Number of slides/pages
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 4), (_) {
      if (_currentPage < _numPages - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 1000),
        curve: Curves.ease,
      );
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onDotClicked(int index) {
    setState(() {
      _currentPage = index;
    });
    _pageController.animateToPage(
      _currentPage,
      duration: const Duration(milliseconds: 500),
      curve: Curves.ease,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 231,
      child: Column(
        children: [
          SizedBox(
            height: 200,
            child: PageView.builder(
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final slideIndex = index % _numPages;
                return Padding(
                  padding: const EdgeInsets.only(right: 5.0, left: 5.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.3),
                      image: DecorationImage(
                        image: NetworkImage(data.coverSlide[slideIndex]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: SmoothPageIndicator(
              controller: _pageController,
              count: _numPages,
              effect: const WormEffect(
                dotColor: Colors.grey,
                activeDotColor: Colors.red,
              ),
              onDotClicked: _onDotClicked,
            ),
          ),
        ],
      ),
    );
  }
}
