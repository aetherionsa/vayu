# vayu
VAYU Documentation

## Overview:
This document provides an overview of a minimalist weather application developed using Flutter framework. The app utilizes the BLoC (Business Logic Component) architecture pattern for state management and integrates Lottie animations for enhanced visual experience.

## Features:

Display of current location.
Real-time weather information including temperature and weather condition.
Smooth Lottie animation to visualize weather conditions.
Technology Stack:

Flutter: A UI toolkit for building natively compiled applications for mobile, web, and desktop from a single codebase.
BLoC: Business Logic Component, a state management library for Flutter.
Lottie: An animation library by Airbnb for iOS, Android, Web, and Windows that parses Adobe After Effects animations exported as JSON.
Implementation Details:

Location Services Integration: Utilize Flutter's geolocation package to fetch the user's current location.

Weather Data Retrieval: Integrate with a weather API such as OpenWeatherMap or Weatherstack to fetch real-time weather data based on the user's location.

BLoC Implementation: Implement BLoC architecture for managing application state. Create separate BLoC classes for managing location and weather data.

Lottie Animation: Integrate Lottie animations to visualize weather conditions. Use appropriate animations for different weather conditions such as sunny, cloudy, rainy, etc.

UI Design: Design a minimalist user interface with a focus on simplicity and elegance. Display the current location at the top of the screen along with the temperature and weather condition. Use smooth animations to transition between different weather conditions.

## Code Structure:

main.dart: Entry point of the application.
bloc/: Contains BLoC classes for managing application state.
models/: Data models for representing location and weather information.
services/: Contains services for fetching location and weather data.
ui/: User interface components including screens and widgets.
Installation:

Ensure Flutter SDK is installed on your machine.
Clone the project repository.
Run flutter pub get to install dependencies.
Configure location and weather APIs in the project.
Run the application using flutter run.
Usage:

Upon launching the application, the user's current location and real-time weather information will be displayed.
The Lottie animation will depict the current weather condition.
Users can interact with the app to view weather forecasts or access additional features.
Contributors:

[Aetherion]
License: 醚

[License Information]
Support:aetherion27@gmail.com
For any queries or support, contact Aether.

Conclusion:
The minimalist weather app developed using Flutter with BLoC extension and Lottie animation provides users with a seamless experience to check their current weather conditions. Its simple yet elegant design makes it user-friendly and accessible for all users.
