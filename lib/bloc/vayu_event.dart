part of 'vayu_bloc.dart';

sealed class VayuEvent extends Equatable {
  const VayuEvent();

  @override
  List<Object> get props => [];
}

class FetchWeather extends VayuEvent {
  final Position position;

  const FetchWeather(this.position);


  @override 
  List<Object> get props =>[position];

}