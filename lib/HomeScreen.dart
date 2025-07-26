import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text(
            'Home',
            style: TextStyle(fontSize: 20.sp), // Responsive text size
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(
            16.w,
          ), // Responsive padding for all screen sizes
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                height: 50.h, // Button height scales with screen height
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/profile');
                  },
                  child: Text(
                    'Go to Profile',
                    style: TextStyle(fontSize: 16.sp), // Adaptive font size
                  ),
                ),
              ),
              SizedBox(height: 20.h), // Vertical spacing that adapts to screen
              SizedBox(
                width: double.infinity,
                height: 50.h,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/gallery');
                  },
                  child: Text(
                    'Go to Gallery',
                    style: TextStyle(fontSize: 16.sp),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
