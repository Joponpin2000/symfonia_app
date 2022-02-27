import 'dart:convert';

import 'package:http/http.dart';

class PriceService {
  final baseUrl = "https://api.coingecko.com/api/v3";

  Future<List<dynamic>> fetchPrices() async {
    try {
      final response = await get(
        Uri.parse(
          baseUrl +
              "/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=false",
        ),
      );
      return jsonDecode(response.body) as List;
    } catch (e) {
      return [];
    }
  }
}
