part of 'prices_cubit.dart';

@immutable
abstract class PricesState {}

class PricesInitial extends PricesState {}

class PricesLoaded extends PricesState {
  final List<Price> prices;

  PricesLoaded({required this.prices});


}
