Flutter Responsive UI Demo using flutter_screenutil

Overview

This project is a simple Flutter demo showcasing how to build responsive user interfaces using the flutter_screenutil package. The application includes three basic screens: Home, Profile, and Gallery. All UI elements are designed to adapt to different screen sizes for a consistent experience across devices.

Screens Included

Home Screen
The home screen contains two buttons that navigate to the Profile screen and the Gallery screen. The buttons are full-width and use responsive text and spacing.

Profile Screen
The profile screen displays a circular avatar image, along with input fields for name and email, and a Save button. The layout is scrollable to ensure that all elements remain accessible on smaller devices. Input fields are styled with rounded borders and adaptive font sizes.

Gallery Screen
This screen displays a grid of items arranged in two columns. The grid layout adjusts spacing based on screen size, and each item maintains a square shape for visual consistency.  The text within each grid item is also responsive.

Design Features

All sizes, spacing, and text styles are adjusted dynamically using the flutter_screenutil package.

Uniform and consistent layout across different screen resolutions and aspect ratios.

Scrollable layout in forms to handle keyboard overlay and small screens.

SafeArea used to avoid system UI intrusions like notches or status bars.


Technologies Used

Flutter SDK

flutter_screenutil package

Material Design Components