import 'package:favorite_places/providers/places_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlacesList extends ConsumerStatefulWidget {
  const PlacesList({super.key});

  @override
  ConsumerState<PlacesList> createState() => _PlacesListState();
}

class _PlacesListState extends ConsumerState<PlacesList> {
  @override
  Widget build(BuildContext context) {
    final placesList = ref.watch(placesProvider);
    return ListView(
      children: [
        for (final placeItem in placesList)
          ListTile(
            title: Text(
              placeItem.title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          )
      ],
    );
  }
}
