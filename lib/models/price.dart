class Price {
  String id;
  String name;
  String image;
  String currentPrice;
  double priceChange;
  double atl;
  int marketCap;
  String lastUpdated;

  Price.fromJson(Map json)
      : id = json['id'],
        name = json['name'],
        image = json['image'],
        currentPrice = json['current_price'].toString(),
        priceChange = json['price_change_24h'],
        atl = json['atl'],
        marketCap = json['market_cap'],
        lastUpdated = json['last_updated'];
}
