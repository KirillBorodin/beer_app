import 'package:beer_app/home/business_objects/beer.dart';
import 'package:beer_app/home/cubit/beers_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RefreshIndicator(
        onRefresh: context.read<BeersCubit>().fetchBeers,
        child: Scaffold(
          body: BlocBuilder<BeersCubit, BeersState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const _ProgressBar();
              }

              return _BeersList(beers: state.beers);
            },
          ),
        ),
      ),
    );
  }
}

class _ProgressBar extends StatelessWidget {
  const _ProgressBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: LinearProgressIndicator());
  }
}

class _BeersList extends StatelessWidget {
  final List<Beer> beers;

  const _BeersList({
    required this.beers,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: beers.length,
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      itemBuilder: (context, index) {
        return _BeerItem(beer: beers[index]);
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 4);
      },
    );
  }
}

class _BeerItem extends StatelessWidget {
  final Beer beer;

  const _BeerItem({Key? key, required this.beer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(beer.imageUrl),
      title: Text(beer.name),
      subtitle: Text(beer.description),
    );
  }
}
