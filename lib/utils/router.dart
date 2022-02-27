import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/cubit/prices_cubit.dart';
import '/services/price.dart';
import '/repositories/price_repository.dart';
import '/views/dashboard/index.dart';

class AppRouter {
  late PriceRepository repository;

  AppRouter() {
    repository = PriceRepository(priceService: PriceService());
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => PricesCubit(repository: repository),
                  child: const Dashboard(),
                ));
      default:
        return null;
    }
  }
}
