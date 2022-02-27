import '/services/price.dart';

import '/models/price.dart';

class PriceRepository {
  final PriceService priceService;

  PriceRepository({required this.priceService});

  Future<List<Price>> fetchPrices() async {
    final rawPrices = await priceService.fetchPrices();

    return rawPrices.map((p) => Price.fromJson(p)).toList();
  }
}
