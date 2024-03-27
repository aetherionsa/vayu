import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:vayu/bloc/vayu_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});


 @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

	Widget getWeatherIcon(int code) {
		switch (code) {
		  case >= 200 && < 300 :
		    return Lottie.asset('assets/thunderstorm.json'
				);
			case >= 300 && < 400 :
		    return Lottie.asset('assets/drizzle.json'
				);
			case >= 500 && < 600 :
		    return Lottie.asset('assets/rain.json'
				);
			case >= 600 && < 700 :
		    return Lottie.asset('assets/snow.json'
				);
			case >= 700 && < 800 :
		    return Lottie.asset('assets/atmosphere.json'
				);
			case == 800 :
		    return Lottie.asset('assets/clear.json'
				);
			case > 800 && <= 804 :
		    return Lottie.asset('assets/cloud.json'
				);
		  default:
			return Lottie.asset('assets/clearsky.json'
			);
		}
	}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(17, 17, 27, 1),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 40, 20),
        child: BlocBuilder<VayuBloc, VayuState>(
          builder: (context, state) {
            if (state is VayuSuccess) {
            return SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  Image.asset(
                    "assets/2.gif",
                    height: 50,
                    width: 50,
                  ),
                  Text(
                    '${state.weather.areaName}',
                    style: TextStyle(
                        color: Color.fromRGBO(43, 39, 62, 1),
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 150,
                  ),
                getWeatherIcon(state.weather.weatherConditionCode!),
                  const SizedBox(
                    height: 100,
                  ),
                  Center(
                    child: Text(
                      '${state.weather.temperature!.celsius!.round()}°C',
                      style: TextStyle(
                        color: Color.fromRGBO(43, 39, 62, 1),
                        fontSize: 60,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                   Center(
                    child: Text(
                      '${state.weather.weatherMain!.toUpperCase()}',
                      style: TextStyle(
                        color: Color.fromRGBO(43, 39, 62, 1),
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),
            );
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }
}
