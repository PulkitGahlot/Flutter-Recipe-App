import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/providers/favorites_provider.dart';

class MealDetailsScreen extends ConsumerWidget{
  const MealDetailsScreen({
    super.key,
    required this.meal,
  });


  final Meal meal;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoriteMeals = ref.watch(favoriteMealsProvider);

    final isFavorite = favoriteMeals.contains(meal);

    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
        actions: [
          IconButton(
            onPressed: () {
              final wasAdded = ref.read(favoriteMealsProvider.notifier).toggleMealFavoriteStatus(meal);
              ScaffoldMessenger.of(context).clearSnackBars();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(wasAdded ? "Meal Added to Favorites!" : "Meal Removed from favorites!"),
                )
              );
            },
            icon: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              transitionBuilder: (child, animation){
                return RotationTransition(
                  turns: Tween<double>(                                 // with <double> you can remove 1.0 as 1 as tween is generic type
                    begin: 0.7,
                    end: 1.0
                  ).animate(animation),
                  child: child,
                );
              },
              child: Icon(
                isFavorite?  Icons.star : Icons.star_border,
                key: ValueKey(isFavorite),),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Hero(
              tag: meal.id,
              child: Image.network(
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
                meal.imageUrl,
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Text(
              'Ingredients -',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            for (final ingredients in meal.ingredients)
              Text(
                ingredients,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),  
              ),
            const SizedBox(
              height: 14,
            ),
            Text(
              'Steps -',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            for (final step in meal.steps)
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 4,
                ),
                child: Text(
                  "-> $step",
                  textAlign: TextAlign.justify,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),  
                ),
              ),
          ],
        ),
      )
    );
  }
}