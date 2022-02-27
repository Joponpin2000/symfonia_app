import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/cubit/prices_cubit.dart';
import '/widgets/price_tile.dart';

class History extends StatelessWidget {
  const History({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<PricesCubit>(context).fetchPrices();

    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "History",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: const [
                    Icon(Icons.swap_vert),
                    Text(
                      "Sort/Filter",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(height: 30),
            Expanded(
              child:
                  // ListView.builder(
                  //   shrinkWrap: true,
                  //   itemCount: 10,
                  //   itemBuilder: (context, index) =>
                  BlocBuilder<PricesCubit, PricesState>(
                builder: (context, state) {
                  if (state is! PricesLoaded) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }

                  final prices = state.prices;

                  return SingleChildScrollView(
                    child: Column(
                      children: prices
                          .map(
                            (p) => PriceTile(
                              price: p,
                            ),
                          )
                          .toList(),
                    ),
                  );
                },
              ),
            ),
            // ),
          ],
        ),
      ),
    );
  }
}
