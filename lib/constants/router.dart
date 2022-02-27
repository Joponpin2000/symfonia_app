import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:symfonia_app/cubit/navigation_cubit.dart';
import '/cubit/prices_cubit.dart';
import '/logic/services/price.dart';
import '/logic/repositories/price_repository.dart';
import '/presentation/screens/index.dart';

class AppRouter {
  late PriceRepository repository;

  AppRouter() {
    repository = PriceRepository(priceService: PriceService());
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => PricesCubit(repository: repository),
              ),
              BlocProvider(
                create: (context) => NavigationCubit(),
              ),
            ],
            child: const Dashboard(),
          ),
        );
      default:
        return null;
    }
  }
}
