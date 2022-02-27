import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '/models/price.dart';
import '/logic/repositories/price_repository.dart';

part 'prices_state.dart';

class PricesCubit extends Cubit<PricesState> {
  final PriceRepository repository;

  PricesCubit({required this.repository}) : super(PricesInitial());

  void fetchPrices() {
    repository.fetchPrices().then((prices) => {
      emit(PricesLoaded(prices: prices))
    });
  }
}
