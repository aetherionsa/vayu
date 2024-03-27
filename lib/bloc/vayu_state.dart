part of 'vayu_bloc.dart';

sealed class VayuState extends Equatable {
  const VayuState();
  
  @override
  List<Object> get props => [];
}

final class VayuInitial extends VayuState {}

final class VayuLoading extends VayuState {}
final class VayuFailure extends VayuState {}
final class VayuSuccess extends VayuState {
  final Weather weather;

  const VayuSuccess(this.weather);

   @override
  List<Object> get props => [weather];
}
