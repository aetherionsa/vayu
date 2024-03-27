import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:geolocator/geolocator.dart';
import 'package:vayu/data/my_data.dart';
import 'package:weather/weather.dart';


part 'vayu_event.dart';
part 'vayu_state.dart';

class VayuBloc extends Bloc<VayuEvent, VayuState> {
  VayuBloc() : super(VayuInitial()) {
    on<FetchWeather>((event, emit) async {
      emit (VayuLoading());
      try {
        WeatherFactory wf = WeatherFactory(API_KEY, language: Language.ENGLISH);
          Weather weather = await wf.currentWeatherByLocation(
          event.position.latitude, 
          event.position.longitude
          );
        print(weather);
        emit (VayuSuccess(weather));

      } catch (e) {
        emit (VayuFailure());

      }
      });
  }
}
