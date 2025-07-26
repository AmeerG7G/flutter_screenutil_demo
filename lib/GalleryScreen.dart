import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text(
            'Gallery',
            style: TextStyle(fontSize: 20.sp), // Adaptive title size
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(16.w), // Uniform responsive padding
          child: GridView.builder(
            itemCount: 12,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Two columns on all screens
              crossAxisSpacing: 12.w, // Responsive horizontal spacing
              mainAxisSpacing: 12.h, // Responsive vertical spacing
              childAspectRatio: 1, // Square items
            ),
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.deepPurple[300],
                  borderRadius: BorderRadius.circular(
                    12.r,
                  ), // Responsive rounded corners
                ),
                child: Center(
                  child: Text(
                    'Item ${index + 1}',
                    style: TextStyle(fontSize: 14.sp), // Responsive text size
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
