import 'package:shoesly/core/values/enums.dart';

abstract class AppState<T> {
  final Status status;
  AppState(this.status);
}

class InitialState<T> extends AppState<T> {
  final T? data;
  final String? message;
  InitialState({
    this.data,
    this.message,
  }) : super(Status.INITIAL);

  List<Object?> get props => [data, message];
}

class LoadingState<T> extends AppState<T> {
  final T? data;
  final String? message;
  LoadingState({
    this.data,
    this.message,
  }) : super(Status.LOADING);

  List<Object?> get props => [data, message];
}

class CompletedState<T> extends AppState<T> {
  final T data;
  final String? message;

  CompletedState(
    this.data, {
    this.message,
  }) : super(Status.COMPLETED);

  List<Object?> get props => [data, message];
}

class ErrorState<T> extends AppState<T> {
  final T? data;
  final String message;

  ErrorState(
    this.message, {
    this.data,
  }) : super(Status.ERROR);

  List<Object?> get props => [data, message];
}
